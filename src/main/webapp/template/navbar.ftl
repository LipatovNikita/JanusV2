<#import "/spring.ftl" as spring/>
<nav class="nav header-color">
    <ul id="nav">
        <ul id="nav" class="left">
            <li><a href="">Janus</a></li>
            <li><a href="">Информация</a></li>
            <li><a href="http://localhost:8080/passport/edit">Edit</a></li>
            <li><a href="http://localhost:8080/passport/add">Add</a></li>
        <#if currentUser??>
            <li><a href="http://localhost:8080/office/">Личный кабинет</a></li>
        </#if>
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


