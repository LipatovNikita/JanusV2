<div class="row">
    <div class="input-field col s6">
        <div class="switch">
            <label>
                Иммунизация
                <input type="checkbox" id="immunization" name="immunization"
                       <#if immunization.immunizationDeworming== true>checked="checked"</#if>>
                <span class="lever"></span>
                Дегельминтизация
            </label>
        </div>
    </div>
    <div class="input-field col s6">
        <input type="text" id="imName" name="imName" value="${immunization.imName!""}" >
        <label for="imName">Наименование</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s6">
        <input type="text" id="drug" name="drug" value="${immunization.drug!""}" >
        <label for="drug">Лекарственное средство</label>
    </div>
    <#--<div id="labelDate" class="input-field col s6">-->
        <#--<label>Дата приема</label>-->
        <#--<div>-->
            <#--<script>-->
                <#--$(function () {-->
                    <#--$('#date').combodate({-->
                        <#--value: new Date(),-->
                        <#--minYear: 2000,-->
                        <#--maxYear: moment().format('YYYY')-->
                    <#--});-->
                <#--});-->
            <#--</script>-->
            <#--<input type="text" id="date" name="date"-->
                   <#--value="${owner.date?string("dd-MM-yyyy")}" format="DD-MM-YYYY"-->
                   <#--data-template="D MMM YYYY">-->
        <#--</div>-->
    <#--</div>-->
</div>