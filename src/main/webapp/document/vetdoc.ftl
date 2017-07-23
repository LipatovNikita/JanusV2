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
<script type="text/javascript" rel="script" src="/resources/js/pgwslider.js"></script>
<#include "/template/navbar.ftl">
<div class="row main_block">
    <form id="vetdocform" name="" method="POST">
        <div id="block_vetdoc" class="col s12 center-block">
        <#include "/template/input/vetdoc.ftl">
        </div>

        <div id="block_specnotes" class="col s12 center-block">
        <#include "/template/input/specialnotes.ftl">
        </div>
        <input class="btn btn-primary" type="submit" value="Отправить данные">
    </form>
</div>

</body>
</html>