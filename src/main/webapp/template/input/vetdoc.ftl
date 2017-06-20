<div class="row">
    <div class="col s4">
        <label for="number">Номер свидетельства</label>
        <input type="text" name="number" id="number" value="${vetDoc.number!0}" required autofocus/>
    </div>
    <div class="col s4">
        <label for="residenceTime">Время пребывания животного в РФ</label>
        <input type="text" name="residenceTime" id="residenceTime" value="${vetDoc.residenceTime!0}" required/>
    </div>
    <#--todo:Изменить дату и сделать выбор employee и stateVeterinaryService -->
    <#--<div class="col s4">-->
        <#--<label>Дата оформления свидетельства</label>-->
        <#--<input type="text" name="issueDate" id="issueDate" value="${(vetDoc.issueDate?string("dd/MM/yyyy"))!""}" required/>-->
    <#--</div>-->
</div>
<div class="row">
<#--todo:Селект сотрудника-->
    <#--<div class="col s6">-->
        <#--<label for="employee">Сотрудник оформивщий свидетельство</label>-->
        <#--<input type="text" name="employee" id="employee" value="${vetDoc.employee!""}" required/>-->
    <#--</div>-->
</div>

