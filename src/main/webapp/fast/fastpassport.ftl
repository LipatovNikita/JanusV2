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
<script type="text/javascript" rel="script" src="/resources/js/combodate.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/fastpassport.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/moment.js"></script>
<#include "/template/navbar.ftl">
<form name="/fast" id="form1" action="" method="POST">
    <div class="row main_block">
        <div class="col s12 block-top">
            <ul class="tabs">
                <li class="tab col"><a class="active" href="#block_passport">Основная информация</a></li>
                <li class="tab col"><a href="#block_owner">Владелец</a></li>
                <li class="tab col"><a href="#block_address">Адрес</a></li>
                <li class="tab col"><a href="#block_vact">Иммунизация</a></li>
                <li class="tab col"><a href="#block_vaccination">Вакцинация</a></li>
                <li class="tab col"><a href="#block_download">Оригиналы</a></li>

            </ul>
        </div>
        <div id="block_passport" class="col s12">
            <div class="center-block">
                <#include "/template/input/passport.ftl">
            </div>
        </div>

        <div id="block_owner" class="col s12">
            <div class="center-block">
                <#include "/template/input/owner.ftl">
            </div>
        </div>

        <div id="block_vact" class="col s12">
            <div class="center-block">
                <#include "/template/input/immunization.ftl">
            </div>
        </div>

        <div id="block_vaccination" class="col s12">
            <div class="center-block">
                <#include "/template/input/vaccination.ftl">
            </div>
        </div>
    </div>
</form>
<footer class="footer">
    footer
</footer>
</body>
</html>
