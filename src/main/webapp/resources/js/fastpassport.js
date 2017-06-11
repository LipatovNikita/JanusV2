$(document).ready(function () {
    $('select').material_select();
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
                .insertBefore($template);
    })

        .on('click', '.removeButton', function () {
            var $row = $(this).parents('.form-group'),
                index = $row.attr('iddiseases');
            $row.remove();
        });
});
