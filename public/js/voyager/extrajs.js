function tinymce_init_callback(editor)
{
    editor.remove();
    editor = null;

      tinymce.init({
        menubar: false,
        selector:'textarea.richTextBox',
        skin_url: $('meta[name="assets-path"]').attr('content')+'?path=js/skins/voyager',
        min_height: 600,
        resize: 'vertical',
        plugins: 'link, image, code, table, textcolor, lists',
        extended_valid_elements : 'input[id|name|value|type|class|style|required|placeholder|autocomplete|onclick]',
        file_browser_callback: function(field_name, url, type, win) {
                if(type =='image'){
                $('#upload_file').trigger('click');
                }
            },
        toolbar: 'styleselect bold italic underline | forecolor backcolor | alignleft aligncenter alignright | bullist numlist outdent indent | link image table | code fontselect |  fontsizeselect',
        font_formats: 'Arial Black=arial black,avant garde;Indie Flower=indie flower, cursive;Times New Roman=times new roman,times;Gotham=Gotham;Bison=Bison',
        fontsize_formats: "8pt 10pt 12pt 14pt 16pt 18pt 24pt 26pt 36pt 45pt",
        convert_urls: false,
        image_caption: true,
        image_title: true
    });
}