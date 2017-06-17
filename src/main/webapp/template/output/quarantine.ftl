<div class="row">
    <div class="col s12">
        <input type="hidden" name="id" value="${quarantine.id!0}">
    </div>
    <div class="input-field col s8">
        <p>${quarantine.laboratory!""}</p>
        <label for="laboratory">Лаборатория</label>
    </div>
    <div class="input-field col s4">
        <p>${quarantine.numberOfDays!0}</p>
        <label for="numberOfDays">Дней в карантине</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s12">
        <p>${quarantine.addressOfLaboratory!""}</p>
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