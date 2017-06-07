<#-- @ftlvariable name="currentUser" type="topprogersgroup.entity.CurrentUser" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Admin home page</title>
</head>
<body>
<nav role="navigation">
    <ul>
    <#if !currentUser??>
        Вы не авторизованы
        <li><a href="/login">Войти</a></li>
    </#if>
    <#if currentUser??>
        <li>
            <form action="/logout" method="post">
                <button type="submit">Выйти</button>
            </form>
        </li>
    </#if>
    <#if currentUser?? && currentUser.role == "ADMIN">
        Вы администратор!!
        <li><a href="/user/create">Добавить пользователя</a></li>
    </#if>
    </ul>
</nav>
</body>
</html>