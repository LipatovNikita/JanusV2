<#import "/spring.ftl" as spring/>

<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Паспорт питомца</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style_child.css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/slider.js"></script>

<#include "/template/navbar.ftl">

<#--<div class="row main_block">-->
<#--<div class="col s12 block-top">-->
<#--<ul class="tabs">-->
<#--<li class="tab col"><a class="active" href="#block_passport">Основная информация</a></li>-->
<#--<li class="tab col"><a href="#block_owner">Владелец</a></li>-->
<#--<li class="tab col"><a href="#block_vact">Иммунизация</a></li>-->
<#--<li class="tab col"><a href="#block_vaccination">Вакцинация</a></li>-->
<#--&lt;#&ndash;<li class="tab col"><a href="#block_download">Оригиналы</a></li>&ndash;&gt;-->

<#--</ul>-->
<#--</div>-->
<#--<div id="block_passport" class="col s12">-->
<#--<div class="center-block">-->
<#---->
<#--</div>-->
<#--</div>-->


<#--<div id="block_owner" class="col s12">-->
<#--<div class="center-block">-->
<#--
<#--</div>-->
<#--</div>-->

<#--<div id="block_vact" class="col s12">-->
<#--<div class="center-block">-->
<#---->
<#--</div>-->
<#--</div>-->

<#--<div id="block_vaccination" class="col s12">-->
<#--<div class="center-block">-->
<#--<#include "/template/output/vaccination.ftl">-->

<#--</div>-->
<#--</div>-->
<#--</div>-->


<div class="row center-block section">
    <div class="col s12 m4">
        <div class="card">
            <div class="card-image">
                <img src="/resources/test.jpg" class="responsive-img" alt=""/>
            </div>
            <div class="card-content">
                <h3 class="light">Pet</h3>
            </div>
        </div>
    </div>
    <div class="col s12 m8">
        <ul class="collapsible popout" data-collapsible="accordion">
            <li>
                <div class="collapsible-header">Основная информация</div>
                <div class="collapsible-body">
                    <span>
                    <#include "/template/output/passport.ftl">
                    </span>
                </div>
            </li>
            <li>
                <div class="collapsible-header">Владелец</div>
                <div class="collapsible-body">
                    <span>
                        <#include "/template/output/owner.ftl">
                    </span>
                </div>
            </li>
            <li>
                <div class="collapsible-header">Иммунизация</div>
                <div class="collapsible-body">
                    <span>
                        <#include "/template/output/immunization.ftl">
                    </span>
                </div>
            </li>
            <li>
                <div class="collapsible-header">Вакцинация</div>
                <div class="collapsible-body">
                    <span>
                        <#include "/template/output/vaccination.ftl">
                    </span>
                </div>
            </li>
            <li>
                <div class="collapsible-header">Карантин</div>
                <div class="collapsible-body">
                    <span>
                        <#include "/template/output/quarantine.ftl">
                    </span>
                </div>
            </li>
        </ul>
    </div>
</div>
<footer class="footer">

</footer>
</body>
</html>