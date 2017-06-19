<div class="row">
    <input type="hidden" name="id" value="${passport.id}">
</div>

<div class="row">
    <div class="input-field col s6">
        <label>Кличка</label>
        <p>${passport.petName!""}</p>
    </div>
    <div class="input-field col s6">
        <label>Тип питомца</label>
        <p>${passport.animalType!""}</p>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <label>Порода</label>
        <p>${passport.breed!""}</p>
    </div>
    <div class="input-field col s6">
        <label>Окрас</label>
        <p>${passport.color!""}</p>
    </div>
</div>


<div class="row">
    <div class="col s3">
        <label>Пол</label>
    <#if passport.gender == true>
        Ж
    <#else>
        М
    </#if>
    </div>
</div>
<div class="col s3">
    <label>Идентификация</label>
<#if passport.microchipTattoo == true>
    <p>Чип</p>
<#else>
    <p>Тату</p>
</#if>
</div>

<div class="input-field col s3">
    <label>Кастрация/Стерилизация</label>
    <input type="checkbox" id="castrationSterilization" name="castrationSterilization"
           <#if passport.castrationSterilization == true>checked="checked"</#if>>
</div>

<div id="labelDateOfBirth" class="input-field col s3">
    <label>Дата рождения</label>
    <p>${(passport.dateOfBirth?string("dd-MM-yyyy"))!""}</p>
</div>

<div class="row microchipTattooShower">
    <div class="input-field col s6">
        <label>Номер чипа/тату</label>
        <p>${passport.numberMicrochipTattoo!""}</p>
    </div>
    <div id="labelDateOfImpl" class="input-field col s6">
        <label>Дата чипирования/татуирования</label>
        <p>${(passport.dateOfImplantation?string("dd/MM/yyyy"))!""}</p>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <label>Клиника</label>
        <p>${passport.clinic!""}</p>
    </div>
    <div class="input-field col s6">
        <label>Доктор</label>
        <p>${passport.doctor!""}</p>
    </div>
</div>

<div class="row">
    <div class="input-field col s12">
        <label>Потомство</label>
        <p>${passport.offspring!""}</p>
    </div>
</div>

<div class="row">
    <div class="input-field col s12">
        <label>Специальные признаки</label>
        <p>${passport.specialFeatures!""}</p>
    </div>
</div>