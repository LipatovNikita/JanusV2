<div class="row">
    <div class="col s6">
        <label for="specialConditionsCarriage">Особые условия перевозки</label>
        <input type="text" name="specialConditionsCarriage" id="specialConditionsCarriage" value="${route.specialConditionsCarriage!""}" required autofocus/>
    </div>
    <div class="col s6">
        <label for="inspectionNotes">Отметки об осмотре</label>
        <input type="text" name="inspectionNotes" id="inspectionNotes" value="${route.inspectionNotes!""}" required/>
    </div>
    <#--todo: Доделать дату-->
    <#--<div class="col s6">-->
        <#--<label for="dateNotes">Дата получения особых отметок</label>-->
        <#--<input type="text" name="dateNotes" id="dateNotes" value="${(route.dateNotes?string("dd/MM/yyyy"))!""}" required/>-->
    <#--</div>-->
</div>

