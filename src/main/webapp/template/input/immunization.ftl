<fieldset>
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
    </div>

    <div class="row">
        <div class="input-field col s6">
            <input type="text" id="imName" name="imName" value="${immunization.imName!""}" class="validate">
            <label for="imName">Наименование</label>
        </div>
        <div class="input-field col s6">
            <input type="text" id="drug" name="drug" value="${immunization.drug!""}" class="validate">
            <label for="drug">Лекарственное средство</label>
        </div>
    </div>
    <div class="col s4">
        <a class="btn btn-primary btnAddImmun">Добавить</a>
    </div>
</fieldset>

<div id="immunTemplate" class="hide template-block">
    <fieldset>
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
        </div>

        <div class="row">
            <div class="input-field col s6">
                <input type="text" id="imName" name="imName" value="${immunization.imName!""}" class="validate">
                <label for="imName">Наименование</label>
            </div>
            <div class="input-field col s6">
                <input type="text" id="drug" name="drug" value="${immunization.drug!""}" class="validate">
                <label for="drug">Лекарственное средство</label>
            </div>
        </div>
        <div class="col s4">
            <a class="btn btn-primary btnRemoveImmun">Удалить</a>
        </div>
    </fieldset>
</div>
<div class="btn-block">
    <a class="btn btn-primary btnPrevious">Previous</a>
    <a class="btn btn-primary btnNext">Next</a>
</div>