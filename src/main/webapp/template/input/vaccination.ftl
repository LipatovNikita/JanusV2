<div class="row">
    <div class="col s12">
        <input type="hidden" name="id" value="${vaccination.id}">
    </div>
</div>
<fieldset>
    <div class="row">
        <div class="input-field col s4">
            <input type="text" id="seriesOfVaccine" name="vaccinations[0].seriesOfVaccine"
                   value="${vaccination.seriesOfVaccine!""}"
                   class="validate">
            <label for="seriesOfVaccine">Серия вакцины</label>
        </div>

        <div class="input-field col s4">
            <input type="text" id="typeOfVaccine" name="vaccinations[0].typeOfVaccine"
                   value="${vaccination.typeOfVaccine!""}"
                   class="validate">
            <label for="typeOfVaccine">Тип вакцины</label>
        </div>
    </div>
    <div class="col s4">
        <a class="btn btn-primary btnAddVac">Добавить</a>
    </div>
    <div class="row">
    <#--<div class="input-field col s4">-->
    <#--<div id="labelDateOfVaccine">-->
    <#--<label>Дата вакцинации</label>-->
    <#--<div>-->
    <#--<script>-->
    <#--$(function () {-->
    <#--$('#dateOfImplantation').combodate({-->
    <#--value: new Date(),-->
    <#--minYear: 2012,-->
    <#--maxYear: moment().format('YYYY')-->
    <#--});-->
    <#--});-->
    <#--</script>-->
    <#--<input type="text" id="dateOfVaccine" name="dateOfVaccine"-->
    <#--value="${passport.dateOfVaccine?string("dd/MM/yyyy")}" format="DD/MM/YYYY"-->
    <#--data-template="D MMM YYYY">-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="input-field col s4">-->
    <#--<div id="labelValidUntil">-->
    <#--<label>Действительна до</label>-->
    <#--<div>-->
    <#--<script>-->
    <#--$(function () {-->
    <#--$('#dateOfImplantation').combodate({-->
    <#--value: new Date(),-->
    <#--minYear: 2012,-->
    <#--maxYear: moment().format('YYYY')-->
    <#--});-->
    <#--});-->
    <#--</script>-->
    <#--<input type="text" id="validUntil" name="validUntil"-->
    <#--value="${passport.validUntil?string("dd/MM/yyyy")}" format="DD/MM/YYYY"-->
    <#--data-template="D MMM YYYY">-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->
    </div>
</fieldset>

<div id="vacTemplate" class="hide template-block">
    <fieldset>
        <div class="row">
            <div class="input-field col s6">
                <input type="text" id="seriesOfVaccine" name="seriesOfVaccine" value="${vaccination.seriesOfVaccine!""}"
                       class="validate">
                <label for="seriesOfVaccine">Серия вакцины</label>
            </div>

            <div class="input-field col s6">
                <input type="text" id="typeOfVaccine" name="typeOfVaccine" value="${vaccination.typeOfVaccine!""}"
                       class="validate">
                <label for="typeOfVaccine">Тип вакцины</label>
            </div>
        </div>
        <div class="col s4">
            <a class="btn btn-primary btnRemoveVac">Удалить</a>
        </div>
    </fieldset>
</div>

<div class="btn-block">
    <a class="btn btn-primary btnPrevious">Previous</a>
    <a class="btn btn-primary btnNext">Next</a>
</div>