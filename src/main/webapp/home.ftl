<#-- @ftlvariable name="currentUser" type="topprogersgroup.entity.CurrentUser" -->
<!DOCTYPE html>
<html lang="ru">
<head>
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style.css'/>

    <meta charset="utf-8">
    <title>Home</title>
</head>
<body>
<nav class="nav header-color">
    <ul id="nav">
        <ul id="nav" class="left">
            <li><a href="">Janus</a></li>
            <li><a href="">Информация</a></li>
        </ul>
        <ul id="nav" class="right">
        <#if !currentUser??>
            <li><a href="/login">Войти</a></li>
        </#if>
        <#if currentUser??>
            <li>
                <form action="/logout" method="post">
                    <button type="submit">Выйти</button>
                </form>
            </li>
        </#if>
        </ul>
    </ul>
</nav>
<div class="section">
    <br/>
    <br/>
    <div>
        <div class="col s6 right picture-block">
            <img src="/resources/images/janus.png" alt=""/>
        </div>
        <div class="col s6 light">
            <h5 class="text-left">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam
                pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros
                justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget,
                bibendum sollicitudin lacus.
            </h5>
        </div>
    </div>
</div>
</body>
</html>
