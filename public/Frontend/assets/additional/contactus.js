$(document).ready(function(){
    jQuery.validator.addMethod("regx", function(value,element) {
        if($.trim(value).length > 0){
            var regexpr = /^[0-9-+()," "]*$/;
            return regexpr.test(value);
        }else{
            return true;
        }
    },"Please enter a valid phone number.");   

    jQuery.validator.addMethod("lettersonly", function(value, element) {
        return this.optional(element) || /^[a-z//s," "]+$/i.test(value);
    }, "Letters and spaces only please");
    
    $('#contact-us-form').validate({
        rules:{
            fullName:{
                required:true,
                lettersonly:true,
            },
            email:{
                required:true,
                email:true,
            },
            number:{
                required:true,
                regx:true,
            },
            subject:{
                required:true,
                maxlength:150,
            },
            message:{
                required:true,
                maxlength:500,
            }
        }
    });
});

/*$('#contact-us-submit').on('click',function(){
    if($('#contact-us-form').valid()){
        alert('hello');
    }   
});*/

$('#contact-us-form').on('submit',function(){
    if($('#contact-us-form').valid()){
        event.preventDefault();
        form_ajax_request('contact-us-form');
    }
});


function form_ajax_request(form_id='') {
    $('#contact-us-submit').attr('disabled',true);
    $('.preloader').css({"display": "flex"});    
    var form = $('form#'+form_id);
    var submit_url = $('form#'+form_id).attr('action');
    var forms = $("form#"+form_id)[0];
    var formdata = new FormData(forms);
    $.ajax({
        url: submit_url,
        type: 'POST',
        dataType: 'JSON',
        data: formdata,
        processData: false,
        contentType: false,
        success: function(result) {
            $('.preloader').css({"display": "none"});
            $('#contact-us-submit').attr('disabled',false);
            var title = 'Error!'; 
            if(result.msg && result.msg === 'success') {
                form[0].reset();
                title = 'Success';
            }else{
                if(result.errors) {
                    $.each(result.errors,function(key, value){
                        $('#'+key).parent().find('label.error').remove();
                        var error_append = '<label id="'+key+'-error" class="error" for="'+key+'">'+value[0]+'</label>';
                        $('#'+key).parent().append(error_append);
                    });
                }
            }

            Swal.fire({
                title: title,
                icon: result.msg,
                html: result.message,
                timer: 5000, 
            }); 
        }

    });
}