<#-- @ftlvariable name="currentUser" type="topprogersgroup.entity.CurrentUser" -->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Личный кабинет администратора</title>
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style.css'/>

    <script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.js"></script>
</head>
<body>

<#include "/template/navbar.ftl">

<#--<nav role="navigation">-->
    <#--<ul>-->
    <#--<#if !currentUser??>-->
        <#--Вы не авторизованы-->
        <#--<li><a href="/login">Войти</a></li>-->
    <#--</#if>-->
    <#--<#if currentUser??>-->
        <#--<li>-->
            <#--<form action="/logout" method="post">-->
                <#--<button type="submit">Выйти</button>-->
            <#--</form>-->
        <#--</li>-->
    <#--</#if>-->
    <#--</ul>-->
<#--</nav>-->

<#if currentUser?? && currentUser.role == "ADMIN">
<div class="center-block section row">
    <div class="col s12">
        <div class="row picture-block">
            <div class="col s4">
                <a href="/admin/create">
                    Добавить пользователя
                </a>
            </div>
            <div id="imgzat" class="col s4">
                <a href="/admin/checkpoint">Добавить ПКВП
                <#--<img src="/resources/images/bids.png" class="responsive-img" alt=""/>-->
                </a>
            </div>
            <div class="col s4">
                <a href="/admin/vet">Добавить ГосВетСлужбу</a>
            </div>
        </div>
    </div>
</div>
</#if>

</body>
</html>