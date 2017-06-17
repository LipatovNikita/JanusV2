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
<script type="text/javascript" rel="script" src="/resources/js/combodate.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/office.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/moment.js"></script>
<#include "/template/navbar.ftl">
<div class="center-block section row">
    <div class="col l6 m6 s12">
        <div class="card">
            <div>
                <label for="destination">Пункт назначения</label>
                <input type="text" name="destination" id="destination" value="${.destination!""}" required autofocus/>
            </div>
            <div>
                <label for="departure">Пункт отправления</label>
                <input type="text" name="departure" id="departure" value="${.departure!""}" required/>
            </div>
            <div>
                <label for="followingPoints">Пункты следования</label>
                <input type="text" name="followingPoints" id="followingPoints" value="${.followingPoints!""}" required/>
            </div>
            <div>
                <label for="BorderInspectionPosts">Въездной БИП в ЕС</label>
                <input type="text" name="BorderInspectionPosts" id="BorderInspectionPosts"
                       value="${.BorderInspectionPosts!""}" required/>
            </div>
            <div>
                <label for="transportType">Тип транспорта</label>
                <input type="text" name="transportType" id="transportType" value="${.transportType!""}" required/>
            </div>
            <div>
                <label for="transportID">Идентификатор транспорта</label>
                <input type="text" name="transportID" id="transportID" value="${.transportID!""}" required/>
            </div>

        </div>
    </div>
</div>
<footer class="footer">

</footer>
</body>
</html>