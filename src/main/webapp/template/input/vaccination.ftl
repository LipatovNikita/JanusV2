<div class="row">
    <div class="col s12">
        <input type="hidden" name="vaccinations[0].id"">
    </div>
</div>
<fieldset>
    <div class="row">
        <div class="input-field col s4">
            <input type="text" id="seriesOfVaccine" name="vaccinations[0].seriesOfVaccine" class="validate">
            <label for="seriesOfVaccine">Серия вакцины</label>
        </div>

        <div class="input-field col s4">
            <input type="text" id="typeOfVaccine" name="vaccinations[0].typeOfVaccine"
                                class="validate">
            <label for="typeOfVaccine">Тип вакцины</label>
        </div>
    </div>
    <div class="col s4">
        <a class="btn btn-primary btnAddVac">Добавить</a>
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