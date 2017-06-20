<div class="row">
    <div class="input-field col s6">
        <input type="text" name="documentNumber" id="documentNumber"
               value="${owner.documentNumber!""}">
        <label for="documentNumber">Серия и номер паспорта</label>
    </div>
    <div class="input-field col s6">
        <input type="text" id="firstName" name="firstName" value="${owner.firstName!""}">
        <label for="firstName">Имя</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <input type="text" id="lastName" name="lastName" value="${owner.lastName!""}">
        <label for="lastName">Фамилия</label>
    </div>
    <div class="input-field col s6">
        <input type="text" id="middleName" name="middleName" value="${owner.middleName!""}">
        <label for="middleName">Отчество</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <input type="text" id="phoneNumber" name="phoneNumber" value="${owner.phoneNumber!""}">
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
                   <#--value="${(owner.dateOfBirth?string("dd-MM-yyyy"))!""}" format="DD-MM-YYYY"-->
                   <#--data-template="D MMM YYYY">-->
        <#--</div>-->
    <#--</div>-->
</div>
<div class="row">
    <div class="input-field col s12">
        <input type="text" id="address" name="address" value="${owner.address!""}">
        <label for="address">Адрес</label>
    </div>
</div>
