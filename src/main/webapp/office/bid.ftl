<#import "/spring.ftl" as spring/>

<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Заявка на вывоз</title>
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
<script type="text/javascript" rel="script" src="/resources/js/office.js"></script>

<#include "/template/navbar.ftl">

<div class="center-block section row">
    <#if bid.status == "CREATED">
    <#--todo: Можно с помощью JS сначала заблокировать ссылку, потом после вывода сообщения, типа после отправки редактировать нельзя, если нажмет да то отправить-->
        <a href="/office/bids/${bid.id}/send">Отправить на расмотрение(без возможности редактирования)</a>
        <a href="/office/bids/${bid.id}/edit">Редактирование</a>
    </#if>
    <div class="col s12">
        <#include "/template/output/bidforowner.ftl"/>
    </div>
</div>
<footer class="footer">

</footer>
</body>
</html>