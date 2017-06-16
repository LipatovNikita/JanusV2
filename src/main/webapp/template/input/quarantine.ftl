<div class="row">
    <div class="col s12">
        <input type="hidden" name="id" value="${quarantine.id!0}">
    </div>
    <div class="input-field col s8">
        <input type="text" id="laboratory" name="laboratory" value="${quarantine.laboratory!""}"
               class="validate">
        <label for="laboratory">Лаборатория</label>
    </div>
    <div class="input-field col s4">
        <input type="text" id="numberOfDays" name="numberOfDays" value="${quarantine.numberOfDays!0}"
               class="validate">
        <label for="numberOfDays">Дней в карантине</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s12">
        <input type="text" id="addressOfLaboratory" name="addressOfLaboratory" value="${quarantine.addressOfLaboratory!""}"
               class="validate">
        <label for="numberOfDays">Адрес лаборатории</label>
    </div>
</div>

<div class="row">

</div>


<#--<div class="row">-->
    <#--<div class="form-group">-->
        <#--<div class="input-field col s12">-->
            <#--<input type="text" id="0" name="diseases" value="${quarantine.diseases[0]!""}"-->
                   <#--class="validate">-->
        <#--</div>-->
        <#--<button type="button" class="btn btn-default addButton">Добавить</button>-->
    <#--</div>-->

    <#--<div class="form-group hide" id="diseasesTemplate">-->
        <#--<div class="input-field col s12">-->
            <#--<input type="text" name="diseases" value="" class="validate">-->
        <#--</div>-->
        <#--<button type="button" class="btn btn-default removeButton">Удалить</button>-->
    <#--</div>-->
<#--</div>-->