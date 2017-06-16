<#-- @ftlvariable name="form" type="topprogersgroup.entity.UserCreateForm" -->
<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
    <script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" rel="script" src="/resources/js/slider.js"></script>
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
        <select name="role" id="role" onclick="showHidePanel()" required>
            <option <#if form.role == 'ADMIN'>selected</#if>>Администратор</option>
            <option <#if form.role == 'EMPLOYEE'>selected</#if>>Сотрудник</option>
        </select>
    </div>

    <div>
        <div class="adminPanel" hidden>
            <label for="firstName">Имя</label>
            <input type="text" name="firstName" value="${admin.firstName!""}" required/>

            <label for="lastName">Фамилия</label>
            <input type="text" name="lastName" id="lastName" value="${admin.lastName!""}" required/>

            <label for="passwordRepeated">Отчество</label>
            <input type="text" name="middleName" id="middleName" value="${admin.middleName!""}" required/>

            <label for="documentNumber">Серия номер пасспорта</label>
            <input type="text" name="documentNumber" id="documentNumber" value="${admin.documentNumber!""}" required/>
        </div>
        <div class="empolyeePanel" hidden>
            <label for="firstName">Имя</label>
            <input type="text" name="firstName" value="${employee.firstName!""}" required/>

            <label for="lastName">Фамилия</label>
            <input type="text" name="lastName" value="${employee.lastName!""}" required/>

            <label for="passwordRepeated">Отчество</label>
            <input type="text" name="middleName" value="${employee.middleName!""}" required/>

            <label for="documentNumber">Серия номер пасспорта</label>
            <input type="text" name="documentNumber" value="${employee.documentNumber!""}" required/>

            <label for="residentialAddress">Адрес проживания</label>
            <input type="text" name="residentialAddress" value="${employee.residentialAddress!""}" required/>

            <label for="phoneNumber">Номер телефона</label>
            <input type="text" name="phoneNumber" value="${employee.phoneNumber!""}" required/>
        </div>
    </div>


    <button type="submit">Добавить</button>
</form>

<script>

</script>

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