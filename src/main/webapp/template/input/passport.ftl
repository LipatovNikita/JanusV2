<div class="row">
    <input type="hidden" name="id" value="${passport.id}">
</div>

<div class="row">
    <div class="input-field col s6">
        <input type="text" id="petName" name="petName" value="${passport.petName!""}">
        <label for="petName">Кличка</label>
        <label for="petName" name="errors">Кличка</label>
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
    <div class="col s3">
        <label>Пол</label>
        <div class="switch">
            <label>
                Ж
                <input type="checkbox" id="gender" name="gender"
                       <#if passport.gender == true>checked="checked"</#if>>
                <span class="lever"></span>
                М
            </label>
        </div>
    </div>
    <div class="col s3">
        <label>Идентификация</label>
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
    <#--<div id="labelDateOfBirth" class="input-field col s3">-->
        <#--<label>Дата рождения</label>-->
        <#--<div>-->
            <#--<script>-->
                <#--$(function () {-->
                    <#--$('#dateOfBirth').combodate({-->
                        <#--value: new Date(),-->
                        <#--minYear: 1950,-->
                        <#--maxYear: moment().format('YYYY')-->
                    <#--});-->
                <#--});-->
            <#--</script>-->
            <#--<input type="text" id="dateOfBirth" name="dateOfBirth"-->
                   <#--value="${(passport.dateOfBirth?string("dd-MM-yyyy"))!""}" format="DD-MM-YYYY"-->
                   <#--data-template="D MMM YYYY">-->
        <#--</div>-->
    <#--</div>-->
</div>

<div class="row microchipTattooShower">
    <div class="input-field col s6">
        <input type="text" id="numberMicrochipTattoo" name="numberMicrochipTattoo"
               value="${passport.numberMicrochipTattoo!""}">
        <label for="numberMicrochipTattoo">Номер чипа/тату</label>
    </div>
    <#--<div id="labelDateOfImpl" class="input-field col s6">-->
        <#--<label>Дата чипирования/татуирования</label>-->
        <#--<div>-->
            <#--<script>-->
                <#--$(function () {-->
                    <#--$('#dateOfImplantation').combodate({-->
                        <#--value: new Date(),-->
                        <#--minYear: 2012,-->
                        <#--maxYear: moment().format('YYYY')-->
                    <#--});-->
                <#--});-->
            <#--</script>-->
            <#--<input type="text" id="dateOfImplantation" name="dateOfImplantation"-->
                   <#--value="${(passport.dateOfImplantation?string("dd/MM/yyyy"))!""}" format="DD/MM/YYYY"-->
                   <#--data-template="D MMM YYYY">-->
        <#--</div>-->
    <#--</div>-->
</div>

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
</div>

<div class="row">
    <div class="input-field col s12">
                    <textarea id="specialFeatures" name="specialFeatures"
                              class="materialize-textarea">${passport.specialFeatures!""}</textarea>
        <label for="specialFeatures">Специальные признаки</label>
    </div>
</div>
<a class="btn btn-primary btnNext" >Next</a>