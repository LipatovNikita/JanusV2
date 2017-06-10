<#import "/spring.ftl" as spring/>

<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Паспорт питомца</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style_child.css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/combodate.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/fastpassport.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/moment.js"></script>
<#include "/template/navbar.ftl">
<form name="/fast" id="form1" action="" method="POST">
    <div class="row main_block">
        <div class="col s12 block-top">
            <ul class="tabs">
                <li class="tab col"><a class="active" href="#block_passport">Основная информация</a></li>
                <li class="tab col"><a href="#block_owner">Владелец</a></li>
                <li class="tab col"><a href="#block_address">Адрес</a></li>
                <li class="tab col"><a href="#block_vact">Иммунизация</a></li>
                <li class="tab col"><a href="#block_quarantine">Карантин</a></li>
                <li class="tab col"><a href="#block_download">Оригиналы</a></li>

            </ul>
        </div>
        <div id="block_passport" class="col s12">
            <div class="center-block">

                <div class="row">
                    <div class="input-field col s6">
                        <input type="text" id="petName" name="petName" value="${passport.petName!""}">
                        <label for="petName">Кличка</label>
                    </div>
                    <div class="input-field col s6">
                        <input type="text" id="animalType" name="animalType" value="${passport.animalType!""}">
                        <label for="animalType">Тип питомца</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input type="text" id="breed" name="breed" value="${passport.breed!""}">
                        <label for="breed">Порода</label>
                    </div>
                    <div class="input-field col s6">
                        <input type="text" id="color" name="color" value="${passport.color!""}">
                        <label for="color">Окрас</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s3">
                        <div class="switch">
                            <label>
                                Ж
                                <input type="checkbox" id="gender" name="gender"
                                       <#if passport.gender == true>checked="checked"</#if>>
                                <span class="lever"></span>
                                М
                            </label>
                        </div>
                        <label style="padding-left: 10px;" for="genderLabel">Пол</label>
                    </div>
                    <div class="col s3">
                        <div class="switch">
                            <label>
                                Чип
                                <input type="checkbox" id="microchipTattoo" name="microchipTattoo"
                                       <#if passport.microchipTattoo == true>checked="checked"</#if>>
                                <span class="lever"></span>
                                Тату
                            </label>
                        </div>
                    </div>
                    <div class="input-field col s3">
                        <input type="checkbox" id="castrationSterilization" name="castrationSterilization"
                               <#if passport.castrationSterilization == true>checked="checked"</#if>>
                        <label for="castrationSterilization">Кастрация/Стерилизация</label>
                    </div>
                </div>
                <div class="row microchipTattooShower">
                    <div class="input-field col s6">
                        <input type="text" id="numberMicrochipTattoo" name="numberMicrochipTattoo"
                               value="${passport.numberMicrochipTattoo!""}">
                        <label for="numberMicrochipTattoo">Номер чипа/тату</label>
                    </div>
                </div>
            <#--<script>-->
            <#--$(function () {-->
            <#--$('#date').combodate({-->
            <#--value: new Date(),-->
            <#--minYear: 1950,-->
            <#--maxYear: moment().format('YYYY')-->
            <#--});-->
            <#--});-->
            <#--</script>-->
            <#-- <div style="margin: 50px">
                 <input type="text" id="date" data-format="DD-MM-YYYY" data-template="D MMM YYYY"/>
                 <input type="button" id="button-deb" onclick="launchChildRegisterModal()">
             </div>-->

                <div class="row">
                    <div class="input-field col s6">
                        <input type="text" id="clinic" name="clinic" value="${passport.clinic!""}">
                        <label for="clinic">Клиника</label>
                    </div>
                    <div class="input-field col s6">
                        <input type="text" id="doctor" name="doctor" value="${passport.doctor!""}">
                        <label for="doctor">Доктор</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="offspring" name="offspring" value="${passport.offspring!""}"
                               class="validate">
                        <label for="offspring">Потомство</label>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                        <textarea id="specialFeatures" name="specialFeatures"
                                  class="materialize-textarea">${passport.specialFeatures!""}</textarea>
                            <label for="specialFeatures">Специальные признаки</label>
                        </div>
                    </div>
                    <input type="submit" value="Созда">
                </div>
            </div>
        </div>

        <div id="block_owner" class="col s12">
            <div class="center-block">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" name="numberAndSeriesOfPassport"
                               value="${owner.numberAndSeriesOfPassport!""}">
                        <label for="numberAndSeriesOfPassport">Серия и номер паспорта</label>
                    </div>
                </div>
                <div class="input-field col s6">
                    <input type="text" id="firstName" name="firstName" value="${owner.firstName!""}" class="validate">
                    <label for="firstName">Имя </label>
                </div>
                <div class="input-field col s6">
                    <input type="text" id="lastName" name="lastName" value="${owner.lastName!""}">
                    <label for="lastName">Фамилия</label>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="patronymic" name="patronymic" value="${owner.patronymic!""}">
                        <label for="patronymic">Отчество</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="phoneNumber" name="phoneNumber" value="${owner.phoneNumber!""}">
                        <label for="phoneNumber">phoneNumber</label>
                    </div>
                </div>
            </div>
        </div>

        <div id="block_address" class="col s12">
            <div class="center-block">
                <div class="row">
                    <div class="input-field col s6">
                        <input type="text" id="country" name="country" value="${address.country!""}" class="validate">
                        <label for="country">Страна</label>
                    </div>
                    <div class="input-field col s6">
                        <input type="text" id="region" name="region" value="${address.region!""}" class="validate">
                        <label for="region">Регион</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="city" name="city" value="${address.city!""}" class="validate">
                        <label for="city">Город</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="street" name="street" value="${address.street!""}" class="validate">
                        <label for="street">Улица</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="building" name="building" value="${address.building!""}"
                               class="validate">
                        <label for="building">Дом</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="apartment" name="apartment" value="${address.apartment!""}"
                               class="validate">
                        <label for="apartment">Номер</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="postcode" name="postcode" value="${address.postcode!""}"
                               class="validate">
                        <label for="postcode">Индекс</label>
                    </div>
                </div>
            </div>
        </div>

        <div id="block_vact" class="col s12">
            <div class="center-block">
                <div class="row">
                    <div class="input-field col s12">
                        <div class="switch">
                            <label>
                                Иммунизация
                                <input type="checkbox" id="immunization" name="immunization"
                                       <#if immunization.immunizationDeworming== true>checked="checked"</#if>>
                                <span class="lever"></span>
                                Дегельминтизация
                            </label>
                        </div>
                    </div>

                    <div class="input-field col s6">
                        <input type="text" id="drug" name="drug" value="${immunization.drug!""}" class="validate">
                        <label for="drug">Лекарственное средство</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="im_name" name="im_name" value="${immunization.name!""}" class="validate">
                        <label for="name">Наименование</label>
                    </div>
                </div>
            </div>
        </div>

        <div id="block_quarantine" class="col s12">
            <div class="center-block">
                <div class="row">
                    <div class="form-group">
                        <div class="input-field col s12">
                            <input type="text" id="diseases" name="diseases" value="${quarantine.diseases!""}"
                                   class="validate">
                        </div>
                        <button type="button" class="btn btn-default addButton">Добавить</button>
                    </div>
                    <div id="diseasesTemplate">
                        <div class="form-group">
                            <div class="input-field col s12">
                                <input type="text" name="diseases" value="${quarantine.diseases!""}" class="validate">
                            </div>
                            <button type="button" class="btn btn-default removeButton">Удалить</button>
                        </div>
                    </div>
                </div>
                    <div class="input-field col s6">
                        <input type="text" id="laboratory" name="laboratory" value="${quarantine.laboratory!""}"
                               class="validate">
                        <label for="laboratory">Лаборатория</label>
                    </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="numberOfDays" name="numberOfDays" value="${quarantine.numberOfDays!0}"
                               class="validate">
                        <label for="numberOfDays">Количество дней</label>
                    </div>
                </div>
            </div>
        </div>

        <div id="block_download" class="col s12">
            <div class="center-block">
            <#--  <input type="file" multiple name="file" /><br/><br/>
                <input type="submit" value="Submit" />-->
            </div>
        </div>
    </div>
</form>
<footer class="footer">
    footer
</footer>
</body>
</html>
