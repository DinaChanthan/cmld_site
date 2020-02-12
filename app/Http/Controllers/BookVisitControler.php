<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BookVisit;
use Illuminate\Support\Facades\Crypt;
use Notification;
use App\Notifications\BookVisitNotification;

class BookVisitControler extends Controller
{
    public function store(Request $request)
    {
        
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required',
            'project' => 'required',
            //'g-recaptcha-response' => 'required|captcha',
            'visit_date' => 'required',
            'visit_time' => 'required',
        ]);
        
        $bookvisit = new BookVisit();
        $bookvisit->name = $request->name;
        $bookvisit->phone = $request->phone;
        $bookvisit->email = $request->email;
        $bookvisit->project_id = Crypt::decrypt($request->project);
        $bookvisit->visit_date = $request->visit_date;
        $bookvisit->visit_time = $request->visit_time;
        if($bookvisit->save()){

            $details = [
                'greeting' => 'Hi Sir/Madam',
                'body' => 'This is notification from Chip Mong Land Website.
                        There is a customer name '.$request->name.' booked house visit.',
                'thanks' => 'Thank you!',
                'actionText' => 'View Book Visit',
                'actionURL' => url('/admin/book-visits/'.$bookvisit->id)
            ];
        
            Notification::route('mail', 'sale.cmld@chipmong.com')
                    ->notify(new BookVisitNotification($details));

            $notification = array('alert-type' => 'success', 'message' => 'Book visit created successfully!');
            return redirect()->route('foundproperty',$request->project)->with($notification);
        }else{
            $notification = array('message' => 'Sorry a problem occurred while creating booking','alert-type' => 'error');
            return redirect()->route('foundproperty',$request->project)->with($notification);
        }
    }
}
