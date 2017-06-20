<div class="row main_block">
    <div class="col s12 block-top">
        <ul class="tabs">
            <li class="tab col"><a class="active" href="#block_bid">Основная информация</a></li>
            <li class="tab col"><a href="#block_route">Маршрут</a></li>
            <#assign x = 1/>
            <#list petList as pet>
                <li class="tab col"><a href="#block_pet${x}">Петомец${x}</a></li>
            <#assign x = x+1/>
            </#list>
            <li class="tab col"><a href="#block_vetdoc">Ветеринарный документ</a></li>

        </ul>
    </div>
    <div id="block_bid" class="col s12">
        <div class="center-block">
        <#include "/template/output/bid.ftl">
        </div>
    </div>

    <div id="block_route" class="col s12">
        <div class="center-block">
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

    <div id="block_vetdoc" class="col s12">
        <div class="center-block">
            <#--todo Создать страничку-->
        <#--<#include "/template/input/vaccination.ftl">-->
        </div>
    </div>
</div>
