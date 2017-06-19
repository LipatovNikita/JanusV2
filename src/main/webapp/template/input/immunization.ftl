<#list passport.immunizationDeworming as item>
<fieldset class="template-block">
    <div class="row">
        <div class="input-field col s6">
           <div class="switch">
                <label>
                    Иммунизация
                    <input type="checkbox" id="passport.immunizationDeworming[${item_index}].immunizationDeworming"
                           name="immunizationDeworming[${item_index}].immunizationDeworming"/>
                    <#if item.immunizationDeworming== true>checked="checked"</#if>
                    <span class="lever"></span>
                    Дегельминтизация
                </label>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s6">
            <input type="text" id="passport.immunizationDeworming[${item_index}].imName"
                   name="immunizationDeworming[${item_index}].imName" value="${item.imName!""}"/>

            <label for="immunizationDeworming[${item_index}].imName">Наименование</label>
        </div>
        <div class="input-field col s6">
            <input type="text" id="passport.immunizationDeworming[${item_index}].drug"
                   name="immunizationDeworming[${item_index}].drug" value="${item.drug!""}"/>
            <label for="immunizationDeworming[${item_index}].drug">Лекарственное средство</label>
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
                        <input type="checkbox" name="immunizationDeworming"/>
                        <#if item.immunizationDeworming== true>checked="checked"</#if>
                        <span class="lever"></span>
                        Дегельминтизация
                    </label>
                </div>
            </div>
            <div class="input-field col s6">
                Здесь должна быть дата
            </div>
        </div>

        <div class="row">
            <div class="input-field col s6">
                <input type="text" name="imName" value="${item.imName!""}">
                <label for="imName">Наименование</label>
            </div>
            <div class="input-field col s6">
                <input type="text" name="drug" value="${item.drug!""}">
                <label for="drug">Лекарственное средство</label>
            </div>
        </div>
        <div class="col s4">
            <a class="btn btn-primary btnRemoveImmun">Удалить</a>
        </div>
    </fieldset>
</div>
</#list>

<div class="btn-block">
    <a class="btn btn-primary btnPrevious">Previous</a>
    <a class="btn btn-primary btnNext">Next</a>
</div>
