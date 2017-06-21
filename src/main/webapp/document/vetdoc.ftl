<#import "/spring.ftl" as spring/>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Паспорт питомца</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/pgwslider.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style_child.css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/office.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/vetDoc.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/pgwslider.js"></script>

<#include "/template/navbar.ftl">

<div class="row main_block">
    <div class="col s12 block-top">
        <ul class="tabs" id="tabs">
            <li class="tab col"><a href="#block_vetdoc" class="active" name="block_vetdoc" data-toggle="tab">Ветеринарное
                свидетельство</a></li>
            <li class="tab col"><a href="#block_specnotes" name="block_specnotes" data-toggle="tab">Специальные
                отметки</a>
        </ul>
    </div>
    <div id="block_vetdoc" class="col s12 center-block">
    <#include "/template/input/vetdoc.ftl">
    </div>

    <div id="block_specnotes" class="col s12 center-block">
    <#include "/template/input/specialnotes.ftl">
    </div>
</div>

<footer>
    footer
</footer>
</body>
</html>