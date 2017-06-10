<#import "/spring.ftl" as spring/>

<html>
<head>
    <title>Add Pet Passport</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/resources/materialize/css/materialize.css" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/style.css"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>
<script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/ajax_content.js"></script>
<script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.min.js"></script>


<div class="row">
    <div class="col s12">
        <ul class="tabs">
            <li class="tab col s3"><a class="active" href="#test1">Test 1</a></li>
            <li class="tab col s3"><a href="#test2">Test 2</a></li>
            <li class="tab col s3 disabled"><a href="#test3">Disabled Tab</a></li>
            <li class="tab col s3"><a href="#test4">Test 4</a></li>
        </ul>
    </div>
    <form name="/fast" id="form1" action="" method="POST">

    <div id="test1" class="col s12">

            <div class="row">
                <div class="col s12">
                    <input type="text" name="numberAndSeriesOfPassport" value="${owner.numberAndSeriesOfPassport!""}">
                </div>
            </div>
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="firstName" name="firstName" value="${owner.firstName!""}" class="validate">-->
                    <#--<label for="firstName">firstName</label>-->
                <#--</div>-->
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="lastName" name="lastName" value="${owner.lastName!""}" >-->
                    <#--<label for="lastName">lastName</label>-->
                <#--</div>-->
            <#--</div>-->
            <#--<div class="row">-->
                <#--<div class="input-field col s12">-->
                    <#--<input type="text" id="patronymic" name="patronymic" value="${owner.patronymic!""}">-->
                    <#--<label for="patronymic">patronymic</label>-->
                <#--</div>-->
            <#--</div>-->
            <#--<div class="row">-->
                <#--<div class="input-field col s12">-->
                    <#--<input type="text" id="dateOfBirth" name="dateOfBirth"-->
                    <#--&lt;#&ndash;value="${owner.dateOfBirth?string("dd/MM/yyyy")}"&ndash;&gt; >-->
                    <#--<label for="dateOfBirth">dateOfBirth</label>-->
                <#--</div>-->
            <#--</div>-->
            <#--<div class="row">-->
                <#--<div class="input-field col s12">-->
                    <#--<input type="text" id="phoneNumber" name="phoneNumber" value="${owner.phoneNumber!""}">-->
                    <#--<label for="phoneNumber">phoneNumber</label>-->
                <#--</div>-->
            <#--</div>-->
            <#--<div class="row">-->
                <#--<div class="input-field col s12">-->
                    <#--<input type="text" id="address" name="address" value="${owner.address!""}" >-->
                    <#--<label for="address">address</label>-->
                <#--</div>-->
            <#--</div>-->
    </div>


    <div id="test2" class="col s12">

            <div class="row">
                <div>
                    <input type="hidden" name="id" value="${passport.id}">
                </div>
                <div class="input-field col s6">
                    <input type="text" id="petName" name="petName" value="${passport.petName!""}" >
                    <label for="petName">Кличка</label>
                </div>
                <div class="input-field col s6">
                    <input type="text" id="animalType" name="animalType" value="${passport.animalType!""}">
                    <label for="animalType">Тип питомца</label>
                </div>
            </div>


            <#--<div class="row">-->
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="breed" name="breed" value="${passport.breed!""}" >-->
                    <#--<label for="breed">Порода</label>-->
                <#--</div>-->
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="color" name="color" value="${passport.color!""}">-->
                    <#--<label for="color">Окрас</label>-->
                <#--</div>-->
            <#--</div>-->

            <#--<div class="row">-->
                <#--<div class="input-field col s3">-->
                    <#--<input type="text" id="dateOfBirth"-->
                           <#--name="dateOfBirth"  &lt;#&ndash;value="${passport.dateOfBirth?string("dd/MM/yyyy")}"&ndash;&gt;-->
                           <#--class="validate">-->
                    <#--<label for="dateOfBirth">Дата рождения</label>-->
                <#--</div>-->

                <#--<div class="input-field col s3">-->
                    <#--<div class="switch">-->
                        <#--<label>-->
                            <#--Ж-->
                            <#--<input type="checkbox" id="gender" name="gender"-->
                                   <#--<#if passport.gender == true>checked="checked"</#if>>-->
                            <#--<span class="lever"></span>-->
                            <#--М-->
                        <#--</label>-->
                    <#--</div>-->

                    <#--<label style="padding-left: 10px;" for="genderLabel">Пол</label>-->
                <#--</div>-->

                <#--<div class="col s3">-->
                    <#--<div class="switch">-->
                        <#--<label>-->
                            <#--Чип-->
                            <#--<input type="checkbox" id="microchipTattoo" name="microchipTattoo"-->
                                   <#--<#if passport.microchipTattoo == true>checked="checked"</#if>>-->
                            <#--<span class="lever"></span>-->
                            <#--Тату-->
                        <#--</label>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="input-field col s3">-->
                    <#--<input type="checkbox" id="castrationSterilization" name="castrationSterilization"-->
                           <#--<#if passport.castrationSterilization == true>checked="checked"</#if> >-->
                    <#--<label for="castrationSterilization">Кастрация/Стерилизация</label>-->
                <#--</div>-->
            <#--</div>-->

            <#--<div class="row microchipTattooShower">-->
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="numberMicrochipTattoo" name="numberMicrochipTattoo"-->
                           <#--value="${passport.numberMicrochipTattoo!""}" >-->
                    <#--<label for="numberMicrochipTattoo">Номер чипа/тату</label>-->
                <#--</div>-->
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="dateOfImplantation" name="dateOfImplantation"-->
                    <#--&lt;#&ndash;value="${passport.dateOfImplantation?string("dd/MM/yyyy")}"&ndash;&gt; >-->
                <#--&lt;#&ndash;<label for="dateOfImplantation">Дата чипирования/татуирования</label>&ndash;&gt;-->
                <#--</div>-->
            <#--</div>-->

            <#--<div class="row">-->
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="clinic" name="clinic" value="${passport.clinic!""}" >-->
                    <#--<label for="clinic">Клиника</label>-->
                <#--</div>-->
                <#--<div class="input-field col s6">-->
                    <#--<input type="text" id="doctor" name="doctor" value="${passport.doctor!""}" >-->
                    <#--<label for="doctor">Доктор</label>-->
                <#--</div>-->
            <#--</div>-->

            <#--<div class="row">-->
                <#--<div class="input-field col s12">-->
                    <#--<input type="text" id="offspring" name="offspring" value="${passport.offspring!""}"-->
                           <#--class="validate">-->
                    <#--<label for="offspring">Потомство</label>-->
                <#--</div>-->
                <#--<div class="row">-->
                    <#--<div class="input-field col s12">-->
                <#--<textarea id="specialFeatures" name="specialFeatures"-->
                          <#--class="materialize-textarea">${passport.specialFeatures!""}</textarea>-->
                        <#--<label for="specialFeatures">Специальные признаки</label>-->
                    <#--</div>-->
                <#--</div>-->

                <#--<div class="row">-->
                    <#--<button class="btn waves-effect waves-light" type="submit" name="action">Создать-->
                        <#--<i class="material-icons right">send</i>-->
                    <#--</button>-->
                <#--</div>-->

                <input type="submit" value="Созда">

            </div>
    <#--</div>-->


    <div id="test3" class="col s12">Test 3</div>


    <div id="test4" class="col s12">Test 4</div>
    </form>
</div>



<#--<nav>-->
<#--<div class="nav-wrapper">-->
<#--<div id="s" class="fastPassportMenu col s12">-->
<#--<a href="/owner/owner1.ftl" id="owner" class="breadcrumb">Владелец</a>-->
<#--<a href="/passport/passport.ftl" id="passport" class="breadcrumb">Паспорт</a>-->
<#--<a href="/immunization/immunization.ftl"  id="immunizationDeworming"  class="breadcrumb">Имунизация</a>-->
<#--<a href="/vaccination/vaccination.ftl" id="vaccination" class="breadcrumb">Вакцинация</a>-->
<#--<a href="" id="pet" class="breadcrumb">Second</a>-->
<#--<a href="" class="breadcrumb">Third</a>-->
<#--<a href="" class="breadcrumb">First</a>-->
<#--<a href="" class="breadcrumb">Second</a>-->
<#--<a href="" class="breadcrumb">Third</a>-->
<#--</div>-->
<#--</div>-->
<#--</nav>-->

<#--<div class="row">-->
<#--<div id="fastPassportMenuLoader" class="col s12">-->

<#--</div>-->
<#--</div>-->
<#--<div class="row">-->
<#--<div class="input-field col s12">-->
<#--<input type="submit" value="Сохранить">-->
<#--</div>-->
<#--</div>-->




</body>

</html>
