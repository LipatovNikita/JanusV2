$(document).ready(function () {
    $('select').material_select();

    $('ul.tabs').tabs();

    $isValid = false;
    var numberRowQuar = 0;
    $('#block_quarantine').on('click', '.addButton', function () {
        numberRowQuar++;
        var $template = $('#diseasesTemplate'),
            $clone = $template
                .clone()
                .removeClass('hide')
                .removeAttr('id')
                .attr('iddiseases', numberRowQuar)
                .attr('id', numberRowQuar)
                .insertBefore($template);

        var $temp = $(document.getElementById(numberRowQuar).children[0].children[0]),
            $elem = $temp
                .clone()
                .attr('value', '${quarantine.diseases[' + numberRowQuar + ']!""}')
                .val($(this).data('defvalue'))
                .insertAfter($temp);
        $temp.remove();
    })

        .on('click', '.removeButton', function () {
            var $row = $(this).parents('.form-group'),
                index = $row.attr('iddiseases');
            $row.remove();
        });

    // Динамические поля для вакцинации
    var numberRowVactination = 0;
    $('#block_vaccination').on('click', '.btnAddVac', function () {
        numberRowVactination++;
        var $templateVactination = $('#vacTemplate'),
            $vac_clone = $templateVactination
                .clone()
                .removeClass('hide')
                .removeAttr('id')
                .attr('id', numberRowVactination)
                .attr('idvac', numberRowVactination)
                .insertBefore($templateVactination)
    })
        .on('click', '.btnRemoveVac', function () {
            var $row = $(this).parents('.template-block');
            $row.remove();
        });

    // Динамические поля для вакцинации
    var numberRowImmunisation = 0;
    $('#block_immunization').on('click', '.btnAddImmun', function () {
        numberRowVactination++;
        var $templateImmun = $('#immunTemplate'),
            $vac_clone = $templateImmun
                .clone()
                .removeClass('hide')
                .removeAttr('id')
                .attr('id', numberRowImmunisation)
                .attr('idimmun', numberRowImmunisation)
                .insertBefore($templateImmun)
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
    $('#form1')
    /*.steps({
     headerTag: 'h2',
     bodyTag: 'section',
     onStepChanging: function (e, currentIndex, newIndex) {
     var fv = $('#form1').data('validate'),
     $container = $('#form1').find('section[data-step="' + currentIndex + '"]');
     fv.validateContainer($container);

     var isValidStep = fv.isValidContainer($container);
     if (isValidStep === false || isValidStep === null) {
     return false;
     }

     return true;
     },
     onFinishing: function (e, currentIndex) {
     var fv = $('#form1').data('validate'),
     $container = $('#form1').find('section[data-step="' + currentIndex + '"]');

     fv.validateContainer($container);

     var isValidStep = fv.isValidContainer($container);
     if (isValidStep === false || isValidStep === null) {
     return false;
     }
     return true;
     },
     onFinished: function (e, currentIndex) {
     $('#welcomeModal').modal();
     }
     })*/
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
    $.extend($.validator.messages, {required: "Поле обязательно для заполения"});

});
