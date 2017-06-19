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
            <option value="ADMIN">Администратор</option>
            <option value="EMPLOYEE">Сотрудник</option>
        </select>
    </div>

    <div>
        <div class="adminPanel">
            <label for="firstName">Имя</label>
            <input type="text" name="firstName" id="firstName" value="${admin.firstName!""}" />

            <label for="lastName">Фамилия</label>
            <input type="text" name="lastName" id="lastName" value="${admin.lastName!""}" />

            <label for="middleName">Отчество</label>
            <input type="text" name="middleName" id="middleName" value="${admin.middleName!""}" />

            <label for="documentNumber">Серия номер пасспорта</label>
            <input type="text" name="documentNumber" id="documentNumber" value="${admin.documentNumber!}" />
        </div>
        <div class="empolyeePanel" hidden>

            <label for="residentialAddress">Адрес проживания</label>
            <input type="text" name="residentialAddress" id="residentialAddress" value="${employee.residentialAddress!""}" />

            <label for="phoneNumber">Номер телефона</label>
            <input type="text" name="phoneNumber" id="phoneNumber" value="${employee.phoneNumber!""}" />

            <#--<label for="stateVeterinaryService">Место работы (ГосВетСлужба)</label>-->
            <#--<input type="text" name="stateVeterinaryService" id="stateVeterinaryService" value="${employee.stateVeterinaryService!""}" />-->

            <label for="position">Должность</label>
            <input type="text" name="position" id="position" value="${employee.position!""}"/>

            <label for="employmentDate">Дата приема на работу</label>
            <input type="text" name="employmentDate" id="employmentDate" value="${(employee.employmentDate?string("dd/MM/yyyy"))!""}"/>

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