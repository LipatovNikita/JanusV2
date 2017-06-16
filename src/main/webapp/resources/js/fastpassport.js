$(document).ready(function () {
    $('select').material_select();
});
$(document).ready(function(){
    $('ul.tabs').tabs();
});
$(document).ready(function () {
    var numberRow = 0;
    $('#block_quarantine').on('click', '.addButton', function () {
        numberRow++;
        var $template = $('#diseasesTemplate'),
            $clone = $template
                .clone()
                .removeClass('hide')
                .removeAttr('id')
                .attr('iddiseases', numberRow)
                .attr('id', numberRow)
                .insertBefore($template);

        var $temp = $(document.getElementById(numberRow).children[0].children[0]),
            $elem = $temp
                .clone()
                .attr('value', '${quarantine.diseases[' + numberRow + ']!""}')
                .val($(this).data('defvalue'))
                .insertAfter($temp);
        $temp.remove();
    })

        .on('click', '.removeButton', function () {
            var $row = $(this).parents('.form-group'),
                index = $row.attr('iddiseases');
            $row.remove();
        });

    $('.btnNext').on('click', function () {
       // $('#tabs li').filter('.active').next('li').find('a[data-toggle="tab"]').trigger('click');
        var name =  $('#tabs').find('.active').parent().next().children().attr('name');
        $('ul.tabs').tabs('select_tab',name);
    });

    $('.btnPrevious').on('click', function () {
        var name =  $('#tabs').find('.active').parent().prev().children().attr('name');
        $('ul.tabs').tabs('select_tab',name);
    });
});
$(function () {
    /*  $('#form1').validate({
     ignore: false,
     rules: {
     images: {
     required: true,
     extension: 'jpe?g,png',
     uploadFile: true
     },
     firstName: {
     required: true
     },
     petName: {
     required: true
     },
     numberMicrochipTattoo: {
     required: true
     },
     breed: {
     required: true
     },
     clinic: {
     required: true
     },
     color: {
     required: true
     },
     doctor: {
     required: true
     },
     imName: {
     required: true
     },
     offspring: {
     required: true
     },
     drug: {
     required: true
     },
     specialFeatures: {
     required: true
     },
     seriesOfVaccine: {
     required: true
     },
     typeOfVaccine: {
     required: true
     }
     }
     });
     $.extend($.validator.messages, {required: "Поле обязательно для заполения"});*/
});
