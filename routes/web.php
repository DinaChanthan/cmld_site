<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/**
 * Route frontend
 */
Route::get('lang/{locale}', 'HomeController@lang');
Route::get('/','HomeController@index')->name('index');
Route::get('/termscondition', function () {
    return view('termscondition');
})->name('termscondition');

Route::get('/findproperty/{propertytype}', 'FindPropertyController@index')->name('findproperty');
Route::get('/findproperty', 'FindPropertyController@search')->name('search.property');

Route::get('/foundproperty/{projectid}/{type}', 'FindPropertyController@foundproperty')->name('foundproperty');

Route::get('/aboutus', 'AboutusController@index')->name('aboutus');
Route::get('/articles', 'ListNewController@index')->name('listnews');
Route::get('/articles/{articletype}/{slug}', 'ListNewController@article')->name('article');
Route::get('/articles/{name}', 'ListNewController@specifictype')->name('listnew');
Route::get('/aftersaleservices', 'SaleController@index')->name('aftersaleservices');
Route::get('/cambodiapage', 'CambodiaController@index')->name('cambodiapage');
Route::get('/contactus', 'ContactusController@index')->name('contactus');

Route::get('/findassistant', 'FindAssistantController@index')->name('findassistant');
Route::get('/findassistant/priceselect', 'FindAssistantController@priceselect')->name('priceselect');
Route::get('/findassistant/location', 'FindAssistantController@locationselect')->name('locationselect');
Route::get('/findassistant/searchbyassistant', 'FindAssistantController@search')->name('search.byassistant');
Route::get('/loanpage', 'LoanController@index')->name('loanpage');

Route::post('/bookvisit','BookVisitControler@store')->name('book.visit');

/**
 * Route backend
 */
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::delete('/projects/{project}','ProjectController@destroy')->name('voyager.projects.destroy');

    Route::get('/project-images','ProjectImageController@index')->name('voyager.project-images.index');
    Route::get('/project-images/create/{project_id}','ProjectImageController@create')->name('voyager.project-images.create');
    Route::post('/project-images/{project_id}','ProjectImageController@store')->name('voyager.project-images.store');
    Route::get('/project-images/{project_image}/edit/{project_id}','ProjectImageController@edit')->name('voyager.project-images.edit');
    Route::put('/project-images/{project_image}/{project_id}','ProjectImageController@update')->name('voyager.project-images.update');
    Route::delete('/project-images/{project_image}/{project_id}','ProjectImageController@destroy')->name('voyager.project-images.destroy');

    Route::get('/project-sizes','ProjectSizeController@index')->name('voyager.project-sizes.index');
    Route::get('/project-sizes/create/{project_id}','ProjectSizeController@create')->name('voyager.project-sizes.create');
    Route::post('/project-sizes/{project_id}','ProjectSizeController@store')->name('voyager.project-sizes.store');
    Route::get('/project-sizes/{project_size}/edit/{project_id}','ProjectSizeController@edit')->name('voyager.project-sizes.edit');
    Route::put('/project-sizes/{project_size}/{project_id}','ProjectSizeController@update')->name('voyager.project-sizes.update');
    Route::delete('/project-sizes/{project_size}/{project_id}','ProjectSizeController@destroy')->name('voyager.project-sizes.destroy');

    Route::get('/room-features','RoomFeatureController@index')->name('voyager.room-features.index');
    Route::get('/room-features/create/{property_id}','RoomFeatureController@create')->name('voyager.room-features.create');
    Route::post('/room-features/{property_id}','RoomFeatureController@store')->name('voyager.room-features.store');
    Route::get('/room-features/{room_feature}/edit/{property_id}','RoomFeatureController@edit')->name('voyager.room-features.edit');
    Route::put('/room-features/{room_feature}/{property_id}','RoomFeatureController@update')->name('voyager.room-features.update');
    Route::delete('/room-features/{room_feature}/{property_id}','RoomFeatureController@destroy')->name('voyager.room-features.destroy');
});
