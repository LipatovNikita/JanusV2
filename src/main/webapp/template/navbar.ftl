<#import "/spring.ftl" as spring/>


<html>
<head>
    <title>Add Pet Passport</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/resources/materialize/css/materialize.css" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/style.css"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>
<script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.min.js"></script>

    <nav class="nav header-color">
        <ul id="nav">
            <ul id="nav" class="left">
                <li><a href="">Janus</a></li>
                <li><a href="">Информация</a></li>
                <li><a href="http://localhost:8080/passport/edit">Edir</a></li>
                <li><a href="http://localhost:8080/passport/add">Add</a></li>
            </ul>



            <ul id="nav" class="right">
            <#if !currentUser??>
                <li><a href="/login">Войти</a></li>
            </#if>
            <#if currentUser??>
                <li><a href="/logout">Выйти</a></li>
            </#if>
            </ul>
        </ul>
    </nav>
</body>
</html>


