<#-- @ftlvariable name="form" type="topprogersgroup.entity.UserCreateForm" -->
<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
</head>
<body>
<h1>Создание нового пользователя</h1>

<form role="form" name="form" action="" method="post">
    <div>
        <label for="email">Адрес электронной почты</label>
        <input type="email" name="email" id="email" value="${form.email}" required autofocus/>
    </div>
    <div>
        <label for="password">Пароль</label>
        <input type="password" name="password" id="password" required/>
    </div>
    <div>
        <label for="passwordRepeated">Повторить пароль</label>
        <input type="password" name="passwordRepeated" id="passwordRepeated" required/>
    </div>
    <div>
        <label for="role">Права в системе</label>
        <select name="role" id="role" required>
            <option <#if form.role == 'PET_OWNER'>selected</#if>>Пользователь (Владелец животного)</option>
            <option <#if form.role == 'ADMIN'>selected</#if>>Администратор</option>
            <option <#if form.role == 'EMPLOYEE'>selected</#if>>Сотрудник</option>
        </select>
    </div>
    <button type="submit">Добавить</button>
</form>

<@spring.bind "form" />
<#if spring.status.error>
<ul>
    <#list spring.status.errorMessages as error>
        <li>${error}</li>
    </#list>
</ul>
</#if>

</body>
</html>