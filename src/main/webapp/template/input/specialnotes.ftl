<#setting date_format="YYYY/MM/DD">
<#list vetDoc.specialNotes as item>
    <div idnotes="${item_index}">
        <div class="row">
            <div class="col s6">
                <label for="specialNotes[${item_index}].specialConditionsCarriage">Особые условия перевозки</label>
                <input type="text" name="specialNotes[${item_index}].specialConditionsCarriage"
                       id="specialNotes[${item_index}].specialConditionsCarriage"
                       value="${item.specialConditionsCarriage!""}" required autofocus/>
            </div>
            <div class="col s6">
                <label for="specialNotes[${item_index}].inspectionNotes">Отметки об осмотре</label>
                <input type="text" name="specialNotes[${item_index}].inspectionNotes"
                       id="specialNotes[${item_index}].inspectionNotes" value="${item.inspectionNotes!""}" required/>
            </div>
        <#--todo: Доделать дату-->
            <div class="input-field col s6">
                <input type="text" class="date" id="specialNotes[${item_index}].dateNotes"
                       name="specialNotes[${item_index}].dateNotes" data-format="YYYY/MM/DD" data-template="D MMM YYYY"
                       value="${item.dateNotes!"1996/10/24"?date}">
                <label for="specialNotes[${item_index}].dateNotes">Дата выдачи данных</label>
            </div>
        </div>
    </div>
    <div id="notesTemplate" class="hide template-block">
        <div class="row">
            <div class="col s6">
                <label for="specialNotes[${item_index}].specialConditionsCarriage">Особые условия перевозки</label>
                <input type="text" name="specialNotes.specialConditionsCarriage"
                       id="specialNotes.specialConditionsCarriage"
                       value="${item.specialConditionsCarriage!""}" required/>
            </div>
            <div class="col s6">
                <label for="specialNotes[${item_index}].inspectionNotes">Отметки об осмотре</label>
                <input type="text" name="specialNotes.inspectionNotes"
                       id="specialNotes.inspectionNotes" value="${item.inspectionNotes!""}" required/>
            </div>
            <div class="input-field col s6">
                <input type="text" class="date" id="specialNotes.dateNotes"
                       name="specialNotes.dateNotes" data-format="YYYY/MM/DD" data-template="D MMM YYYY"
                       value="${item.dateNotes!"1996/10/24"?date}">
                <label for="specialNotes[${item_index}].dateNotes">Дата выдачи данных</label>
            </div>
        </div>
        <div class="col s4">
            <a class="btn btn-primary btnRemoveNotes">Удалить</a>
        </div>
    </div>
</#list>
