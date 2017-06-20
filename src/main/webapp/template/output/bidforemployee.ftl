<div class="row main_block">
    <div class="col s12 block-top">
        <ul class="tabs">
            <li class="tab col"><a class="active" href="#block_bid">Основная информация</a></li>
            <#assign x = 1/>
            <#list petList as pet>
                <li class="tab col"><a href="#block_pet${x}">Петомец${x}</a></li>
            <#assign x = x+1/>
            </#list>

        </ul>
    </div>
    <div id="block_bid" class="col s12">
        <div class="center-block">
            <div class="row">
                <div class="col s10">
                    <select name="status" id="status" required>
                        <option value="ACCEPTED">Принять</option>
                        <option value="REJECTED">Отклонить</option>
                    </select>
                </div>
                <div class="col s2">
                    <input type="submit" name="send" value="Сохранить">
                </div>
            </div>
        <#include "/template/output/bid.ftl">
        <#include "/template/output/route.ftl">
        </div>
    </div>

    <#assign x = 1/>
    <#list petList as pet>
        <div id="block_pet${x}" class="col s12">
            <div class="row center-block">
                <div class="col s4">
                    <ul class="pgwSlider">
                    <#list pet.passport.images.path as path>
                        <li><img src="${path}" alt=""></li>
                    </#list>
                    </ul>
                </div>
                <div class="col s8">
                    <#include "/template/output/pet.ftl">
                </div>
            </div>
        </div>
        <#assign x = x+1/>
    </#list>
</div>
