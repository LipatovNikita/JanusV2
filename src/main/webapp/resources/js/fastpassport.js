$(document).ready(function () {
    $('#date').combodate();

    $('select').material_select();

    $('ul.tabs').tabs();

    $isValid = false;
    var numberRowQuar = $('fieldset[idquarantine]:last').attr('idquarantine');
    $('#block_quarantine').on('click', '.btnAddQuar', function () {
        numberRowQuar++;
        var $template = $('#quarantineTemplate'),
            $clone = $template
                .clone()
                .removeClass('hide')
                .removeAttr('id')
                .attr('idquarantine', numberRowQuar)
                .insertBefore($template);
        $clone
            .find('[name="diseases.name"]').attr('name', 'diseases[' + numberRowQuar + '].name').attr('id', 'diseases[' + numberRowQuar + '].name').end()
            .find('[name="diseases.researchmethod"]').attr('name', 'diseases[' + numberRowQuar + '].researchmethod').attr('id', 'diseases[' + numberRowQuar + '].researchmethod').end()
            .find('[name="diseases.result"]').attr('name', 'diseases[' + numberRowQuar + '].result').attr('id', 'diseases[' + numberRowQuar + '].result').end()
    })
        .on('click', '.btnRemoveQuar', function () {
            var $row = $(this).parents('.template-block');
            $row.remove();
        });

    // Динамические поля для вакцинации
    var numberRowVaccination = $('fieldset[idvac]:last').attr('idvac');
    $('#block_vaccination').on('click', '.btnAddVac', function () {
        numberRowVaccination++;
        var $templateVaccination = $('#templateVaccination'),
            $vac_clone = $templateVaccination
                .clone()
                .removeClass('hide')
                .removeAttr('id')
                .attr('idvac', numberRowVaccination)
                .insertBefore($templateVaccination);
        $vac_clone
            .find('[name="vaccination.seriesOfVaccine"]').attr('name', 'vaccination[' + numberRowVaccination + '].seriesOfVaccine').attr('id', 'vaccination[' + numberRowVaccination + '].seriesOfVaccine').end()
            .find('[name="vaccination.typeOfVaccine"]').attr('name', 'vaccination[' + numberRowVaccination + '].typeOfVaccine').attr('id', 'vaccination[' + numberRowVaccination + '].typeOfVaccine').end()
    })
        .on('click', '.btnRemoveVac', function () {
            var $row = $(this).parents('.template-block');
            $row.remove();
        });

    // Динамические поля для иммунизации
    var numberRowImmunization = 0;
    $('#block_immunization').on('click', '.btnAddImmun', function () {
        numberRowImmunization++;
        var $templateImmun = $('#immunTemplate'),
            $vac_clone = $templateImmun
                .clone()
                .removeClass('hide')
                .removeAttr('id')
                .attr('idimmun', numberRowImmunization)
                .insertBefore($templateImmun);
        $vac_clone
            .find('[name="immunizationDeworming"]').attr('id', 'passport.immunizationDeworming[' + numberRowImmunization + '].immunizationDeworming').attr('name', 'immunizationDeworming[' + numberRowImmunization + '].immunizationDeworming').end()
            .find('[name="imName"]').attr('id', 'passport.immunizationDeworming[' + numberRowImmunization + '].imName').attr('name', 'immunizationDeworming[' + numberRowImmunization + '].imName').end()
            .find('[name="drug"]').attr('id', 'passport.immunizationDeworming[' + numberRowImmunization + '].drug').attr('name', 'immunizationDeworming[' + numberRowImmunization + '].drug').end()
    })
        .on('click', '.btnRemoveImmun', function () {
            var $row = $(this).parents('.template-block');
            $row.remove();
        });

    $('.btnNext').on('click', function () {
        $isValid = false;
        var name = $('#tabs').find('.active').parent().next().children().attr('name');
        $('ul.tabs').tabs('select_tab', name);
    });

    $('.btnPrevious').on('click', function () {
        var name = $('#tabs').find('.active').parent().prev().children().attr('name');
        $('ul.tabs').tabs('select_tab', name);

    });

});
$(function () {
   /* $('#form1')
        .validate({
            errorElement: 'div',
            highlight: function (element, errorClass, validClass) {
                $(element).addClass(errorClass).removeClass(validClass);
                $('.errors').find("label[for=" + element.id + "]")
                    .addClass(errorClass);
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass(errorClass).addClass(validClass);
                $('.errors').find("label[for=" + element.id + "]")
                    .removeClass(errorClass);
            },
            ignore: false,

            rules: {
                images: {
                    required: true,
                    extension: 'jpe?g,png',
                    uploadFile: true
                },
                petName: {
                    required: true
                },
                animalType: {
                    required: true
                },
                breed: {
                    required: true
                },
                color: {
                    required: true
                },
                doctor: {
                    required: true
                },
                numberMicrochipTattoo: {
                    required: true
                },
                clinic: {
                    required: true
                },
                offspring: {
                    required: true
                },
                numberAndSeriesOfPassport: {
                    required: true
                },
                firstName: {
                    required: true
                },

                lastName: {
                    required: true
                },
                patronymic: {
                    required: true
                },
                imName: {
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

