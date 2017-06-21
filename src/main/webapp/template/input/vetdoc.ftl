<div class="row">
    <div class="col s4">
        <label for="number">Номер свидетельства</label>
        <input type="text" name="number" id="number" value="${vetDoc.number!0}" required autofocus/>
    </div>
    <div class="col s4">
        <label for="residenceTime">Время пребывания животного в РФ</label>
        <input type="text" name="residenceTime" id="residenceTime" value="${vetDoc.residenceTime!0}" required/>
    </div>
    <#setting date_format="YYYY/MM/DD">
    <#--todo:Изменить дату и сделать выбор employee  -->
    <div class="input-field col s6">
        <input type="text" class="date" id="issueDate"
               name="issueDate" data-format="YYYY/MM/DD" data-template="D MMM YYYY"
               value="${vetDoc.issueDate!"1996/10/24"?date}">
        <label for="dateNotes">Дата оформления</label>
    </div>
</div>
<div class="row">
<#--todo:Селект сотрудника-->
    <#--<div class="col s6">-->
        <#--<label for="employee">Сотрудник оформивщий свидетельство</label>-->
        <#--<input type="text" name="employee" id="employee" value="${vetDoc.employee!""}" required/>-->
    <#--</div>-->
</div>

