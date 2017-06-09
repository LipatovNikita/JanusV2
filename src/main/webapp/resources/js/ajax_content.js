/**
 * Created by Татьяна on 09.06.2017.
 */
$(document).ready(function(){
    $('#getPassport').click(function(){
        $.ajax({
            url: "/content.php",
            cache: false,
            beforeSend: function() {
                $('#divPassport').html('Получаем контент');
            },
            success: function(html){
                $("#divPassport").html(html);
            }
        });
        return false;
    });
});
