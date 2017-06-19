<div class="row">
    <input type="hidden" id="quarantine.id" name="quarantine.id" value="${quarantine.id!0}">
    <div class="input-field col s6">
        <input type="text" id="quarantine.laboratory" name="quarantine.laboratory" value="${quarantine.laboratory!""}">
        <label for="quarantine.laboratory">Лаборатория</label>
    </div>
    <div class="input-field col s6">
        <input type="text" id="quarantine.addressOfLaboratory" name="quarantine.addressOfLaboratory"
               value="${quarantine.addressOfLaboratory!""}">
        <label for="quarantine.addressOfLaboratory">Дней в карантине</label>
    </div>
    <div class="input-field col s4">
        <input type="text" id="quarantine.numberOfDays" name="quarantine.numberOfDays"
               value="${quarantine.numberOfDays!0}">
        <label for="quarantine.numberOfDays">Дней в карантине</label>
    </div>
</div>
<#list quarantine.diseases as item>
<fieldset class="template-block" idquarantine="${item_index}">
    <div class="row">
        <div class="input-field col s6">
            <input type="text" id="diseases[${item_index}].name" name="diseases[${item_index}].name"
                   value="${item.name!""}">
            <label for="diseases[${item_index}].name">Наименование</label>
        </div>
        <div class="input-field col s6">
            <input type="text" id="diseases[${item_index}].researchmethod" name="diseases[${item_index}].researchmethod"
                   value="${item.researchmethod!""}">
            <label for="diseases[${item_index}].researchmethod">Метод исследования</label>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s8">
            <input type="text" id="diseases[${item_index}.result" name="diseases[${item_index}].result"
                   value="${item.result!""}">
            <label for="diseases[${item_index}].result">Результат</label>
        </div>
        <div class="input-field col s4">
            Здесь должна быть дата
        </div>
    </div>
    <div class="col s4">
        <a class="btn btn-primary btnAddQuar">Добавить</a>
    </div>
</fieldset>
<fieldset class="template-block hide" id="quarantineTemplate">
        <div class="row">
            <div class="input-field col s6">
                <input type="text" id="diseases.name" name="diseases.name">
                <label for="diseases[${item_index}].name">Наименование</label>
            </div>
            <div class="input-field col s6">
                <input type="text" id="diseases.researchmethod" name="diseases.researchmethod">
                <label for="diseases[${item_index}].researchmethod">Метод исследования</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s8">
                <input type="text" id="diseases.result" name="diseases.result">
                <label for="diseases[${item_index}].result">Результат</label>
            </div>
            <div class="input-field col s4">
                Здесь должна быть дата
            </div>
        </div>
        <div class="col s4">
            <a class="btn btn-primary btnRemoveQuar">Удалить</a>
        </div>
    </fieldset>
</#list>


