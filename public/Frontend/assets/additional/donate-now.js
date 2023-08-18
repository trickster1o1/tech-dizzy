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

$('#donate-now-submit-form').validate({
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
            address:{
                required:true
            },
           /* position:{
                required:true
            },*/
            paymentMethod:{
                required:true
            },
            amount:{
                required:true,
                number:true,
                min:10,
            }
        }
});

$('#paymentMethod').on('change',function(){
    var payment_method = $(this).val();
    $('.paymentDetail').addClass('d-none');
    $('#'+payment_method+'-main').removeClass('d-none');
    $(this).valid();
});

$('#donate-now-submit-form').on('submit',function(){
    if($('#donate-now-submit-form').valid()){
        event.preventDefault();
        form_ajax_request('donate-now-submit-form');
    }
});


function post(path, params) {
    var form = document.createElement("form");
    form.setAttribute("method", "POST");
    form.setAttribute("action", path);

    for(var key in params) {
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", key);
        hiddenField.setAttribute("value", params[key]);
        form.appendChild(hiddenField);
    }
    document.body.appendChild(form);
    form.submit();
}

function form_ajax_request(form_id='') {
    $('#donate-now-btn-submit').attr('disabled',true);
    $('.preloader').css({"display": "flex"});    
    var form = $('form#'+form_id);
    var submit_url = $('form#'+form_id).attr('action');
    var forms = $("form#"+form_id)[0];
    var formdata = new FormData(forms);
    var path="https://uat.esewa.com.np/epay/main";
    $.ajax({
        url: submit_url,
        type: 'POST',
        dataType: 'JSON',
        data: formdata,
        processData: false,
        contentType: false,
        success: function(result) {

            $('#donate-now-btn-submit').attr('disabled',false);
            var title = 'Error!'; 
            if(result.msg && result.msg === 'success') {
                //form[0].reset();
                /*$('#donationProgram').val('').trigger('change');
                $('#paymentMethod').val('').trigger('change');*/
                title = 'Success';
                if(result.method == 'ESW'){
                    var params= {
                        amt: result.amount,
                        psc: 0,
                        pdc: 0,
                        txAmt: 0,
                        tAmt: result.amount,
                        pid: result.donner_id,
                        scd: "EPAYTEST",
                        su: result.base_url+"/payment-message/success?q=su",
                        fu: result.base_url+"/payment-message/failed?q=fu&pid="+result.donner_id
                    }
                    post(path, params);
                }else if(result.method == 'PPL'){
                    $('#paypal-form').find('input[name="amount"]').val(result.amount);
                    $('#paypal-form').find('input[name="submit"]').trigger('click');
                }else{
                    $('.preloader').css({"display": "none"});
                    Swal.fire({
                        title: title,
                        icon: result.msg,
                        html: result.message,
                        timer: 5000, 
                    }); 
                }

            }else{
                $('.preloader').css({"display": "none"});
                if(result.errors) {
                    $.each(result.errors,function(key, value){
                        $('#'+key).parent().find('label.error').remove();
                        var error_append = '<label id="'+key+'-error" class="error" for="'+key+'">'+value[0]+'</label>';
                        $('#'+key).parent().append(error_append);
                    });
                }


                Swal.fire({
                    title: title,
                    icon: result.msg,
                    html: result.message,
                    timer: 5000, 
                }); 
            }
        }

    });
}