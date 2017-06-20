<div class="row">
    <div class="input-field col s6">
        <label>Серия и номер паспорта</label>
        <p>${owner.numberAndSeriesOfPassport!""}</p>
    </div>
    <div class="input-field col s6">
        <label>Имя </label>
        <p>${owner.firstName!""}</p>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <label>Фамилия</label>
        <p>${owner.lastName!""}</p>
    </div>
    <div class="input-field col s6">
        <label>Отчество</label>
        <p>${owner.middleName!""}</p>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <label>Номер телефона</label>
        <p>${owner.phoneNumber!""}</p>
    </div>
    <div class="input-field col s6">
        <label>Дата рождения</label>
        <p>${(owner.dateOfBirth?string("dd-MM-yyyy"))!""}</p>
    </div>
</div>
<div class="row">
    <div class="input-field col s12">
        <label>Адрес</label>
        <p>${owner.address!""}</p>
    </div>
</div>
