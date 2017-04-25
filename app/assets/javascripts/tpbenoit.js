$(function(){
    $('#actions').on('click', function(){
        $('#total').attr("disabled", false)
    })

    $('input').blur(function(){
        if ($('#chevaux').val() <= 3)
        {

          if ($('#km').val() <= 5000)
            {
                $('#total').attr("value", $('#km').val()*0.41)
            }

            else if ($('#km').val() >= 5001 && $('#km').val() <= 20000)
            {
                $('#total').attr("value", ($('#km').val()*0.245)+824)
            }

            else
            {
                $('#total').attr("value", $('#km').val()*0.286)
            }
        }


        else if ($('#chevaux').val() == 4)

        {


            if ($('#km').val() <= 5000)
            {
                $('#total').attr("value", $('#km').val()*0.493)
            }

            else if ($('#km').val() >= 5001 && $('#km').val() <= 20000)
            {
                $('#total').attr("value", ($('#km').val()*0.277)+1082)
            }
            else
            {
                $('#total').attr("value", $('#km').val()*0.322)
            }
        }

        else if ($('#chevaux').val() == 5)
        {
            if ($('#km').val() <= 5000)
            {
                $('#total').attr("value", $('#hm').val()*0.543)
            }

            else if ($('#km').val() >= 5001 && $('#km').val() <= 20000)
            {
                $('#total').attr("value", ($('#km').val()*0.305)+1188)
          }

            else
            {
                $('#total').attr("value", $('#km').val()*0.364)
            }
        }

        else if ($('#chevaux').val() == 6)
        {

            if ($('#km').val() <= 5000)
            {
                $('#total').attr("value", $('#km').val()*0.568)
            }

            else if ($('#total').val() >= 5001 && $('#km').val() <= 20000)
            {
                $('#total').attr("value", ($('#km').val()*0.32)+1244)
            }
            else
            {
                $('#total').attr("value", $('#km').val()*0.382)
            }
        }

        else if ($('#chevaux').val() >= 7)
        {

            if ($('#km').val() <= 5000)
            {
                $('#total').attr("value", $('#km').val()*0.595)
            }

            else if ($('#km').val() >= 5001 && $('#km').val() <= 20000)
            {
                $('#total').attr("value", ($('#km').val()*0.337)+1288)
            }

            else
            {
                $('#total').val($('#km').val()*0.401)

        }
    }
})})
