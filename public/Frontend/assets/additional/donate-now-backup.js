    let bank = '';
    function selectBank(id) {
        $('#bank-error').css('display','none'); 
        $('.bank-payment').css('background-color','#ffa415');
        $('#bank-'+id).css('background-color','#ff5528');
        bank = id;
    }
    $('#payment').on('change',()=> {
        $('#bank-error').css('display','none'); 
        $('.payment-card').css('display','none');
        $('.bank-payment').css('background-color','#ffa415');
        $('.'+$('#payment').val()+'-payment').css('display','grid');

        bank = '';
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

    function submitForm(event) {
        event.preventDefault();
        $('#btn-submit').attr('disabled',true)
        $('#btn-submit').html('<img src="/Frontend/assets/images/loader/ripple.svg" alt="" style="width:3em; height:3em;">');
        
        $('.error').css('display','none'); 
        
        /*@if($program)
            //var id = <?php echo json_encode($program->id) ?>;
        @else 
            
        @endif*/
        var id = $('#donationProgram').val();
        var path="https://uat.esewa.com.np/epay/main";
       
        if ($('#payment').val() === 'bank' && !bank) {
            $('#bank-error').css('display','block'); 
            $('#bank-error').html('Please pick a bank first'); 
            
            $('#btn-submit').attr('disabled',false);
            $('#btn-submit').html('Donate now');
        } else {
            if($('#payment').val() === 'PPL') {
                $('[name="amount"]').val($('#value').val());    
            }
            $.ajax({
                url:"/donate-now/submit",
                data:{' _token': '{{csrf_token()}}',
                        'fullName': $('#name').val(),'email': $('#email').val(),'number': $('#number').val(),
                        'amount':$('#value').val(),'donationProgram':id, 'paymentMethod':$('#payment').val(),
                        'address':$('#address').val(),'possition':$('#occupation').val(),
                        'bank_id':bank,'remarks':$('#remarks').val()
            },
                type:'post',
                success:function(result) {
                    if(result.msg && result.msg === 'success') {
                        if($('#payment').val() === 'ESW') {
                            var params= {
                                amt: $('#value').val(),
                                psc: 0,
                                pdc: 0,
                                txAmt: 0,
                                tAmt: $('#value').val(),
                                pid: result.donner_id,
                                scd: "EPAYTEST",
                                su: "http://127.0.0.1:8000/payment-message/success?q=su",
                                fu: "http://127.0.0.1:8000/payment-message/failed?q=fu&pid="+result.donner_id
                            }

                            post(path, params);

                        }else if($('#payment').val() === 'PPL') {
                            $("#paypal-form").children("form").submit();
                        }
                        $('.error').css('display','none');

                        if ($('#payment').val() !== 'ESW' && $('#payment').val() !== 'PPL' ) {
                            $('#submit-form')[0].reset();
                            
                            Swal.fire(
                                result.msg,
                                result.message,
                                result.msg
                            );

                            $('#btn-submit').attr('disabled',false);
                            $('#btn-submit').html('Donate now');
                        }
                       
                    } else {
                        $('#btn-submit').attr('disabled',false);
                        $('#btn-submit').html('Donate now');
                        $('.error').css('display','none');
                        if(result.errors) {
                            $.each(result.errors,function(key, value){
                                $('#'+key+'-e').css('display','block');
                                $('#'+key+'-e').html(value[0]);
                            });
                           
                        }
                        console.log(result);

                    }
                },
                
                error: function(jqXhr, json, errorThrown){// this are default for ajax errors 
                   console.log(errorThrown);
                   
                   $('#btn-submit').attr('disabled',false);
                    $('#btn-submit').html('Send us a message');
        
                }

            });
        }
        


//ESEWA FUNCTION
    }
