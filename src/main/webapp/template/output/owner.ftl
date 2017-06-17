<div class="row">
    <div class="input-field col s6">
        <p>${owner.numberAndSeriesOfPassport!""}</p>
        <label for="numberAndSeriesOfPassport">Серия и номер паспорта</label>
    </div>
    <div class="input-field col s6">
        <p>${owner.firstName!""}</p>
        <label for="firstName">Имя </label>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <p>${owner.lastName!""}</p>
        <label for="lastName">Фамилия</label>
    </div>
    <div class="input-field col s6">
        <p>${owner.patronymic!""}</p>
        <label for="patronymic">Отчество</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <p>${owner.phoneNumber!""}</p>
        <label for="phoneNumber">Номер телефона</label>
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
                   <#--value="${owner.dateOfBirth?string("dd-MM-yyyy")}" format="DD-MM-YYYY"-->
                   <#--data-template="D MMM YYYY">-->
        <#--</div>-->
    <#--</div>-->
</div>
<#--<div class="row">-->
    <#--<div class="input-field col s6">-->
        <#--<input type="text" id="address" name="address" value="${owner.address!""}">-->
        <#--<label for="address">Номер телефона</label>-->
    <#--</div>-->
<#--</div>-->
