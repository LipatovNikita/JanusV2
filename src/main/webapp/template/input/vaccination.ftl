<#list passport.vaccination as item>
<fieldset class="template-block" idvac="${item_index}">
    <input type="hidden" name="vaccination[${item_index}].id" value="${item.id!""}">
    <div class="row">
        <div class="input-field col s6">
            <input type="text" id="vaccination[${item_index}].typeOfVaccine"
                   name="vaccination[${item_index}].typeOfVaccine" value="${item.typeOfVaccine!""}">
            <label for="vaccination[${item_index}].typeOfVaccine">Тип вакцины</label>
        </div>
        <div class="input-field col s6">
            <input type="text" id="vaccination[${item_index}].seriesOfVaccine"
                   name="vaccination[${item_index}].seriesOfVaccine" value="${item.seriesOfVaccine!""}"/>
            <label for="vaccination[${item_index}].seriesOfVaccine">Серия вакцины</label>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s6">
            Здесь будет дата
        </div>
        <div class="input-field col s6">
            Здесь будет дата
        </div>
    </div>
    <div class="col s4">
        <a class="btn btn-primary btnAddVac">Добавить</a>
    </div>
</fieldset>
<div id="templateVaccination" class="hide template-block">
    <fieldset class="template-block">
        <div class="row">
            <div class="input-field col s6">
                <input type="text" id="vaccination.typeOfVaccine"
                       name="vaccination.typeOfVaccine">
                <label for="typeOfVaccine">Тип вакцины</label>
            </div>
            <div class="input-field col s6">
                    <input type="text" id="vaccination.seriesOfVaccine"
                           name="vaccination.seriesOfVaccine""/>
                    <label for="seriesOfVaccine">Серия вакцины</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                Здесь будет дата
            </div>
            <div class="input-field col s6">
                Здесь будет дата
            </div>
        </div>
        <div class="col s4">
            <a class="btn btn-primary btnRemoveVac">Удалить</a>
        </div>
    </fieldset>
</div>
</#list>

<div class="btn-block">
    <a class="btn btn-primary btnPrevious">Previous</a>
    <a class="btn btn-primary btnNext">Next</a>
</div>