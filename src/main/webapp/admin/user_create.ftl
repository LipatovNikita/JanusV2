<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Создание нового пользователя</title>
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style.css'/>

    <script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.js"></script>
    <script type="text/javascript" rel="script" src="/resources/js/slider.js"></script>
</head>
<body>
<#include "/template/navbar.ftl">

<form role="form" name="form" action="" method="post">
    <div class="row">
        <div class="col s12 m10 l8">
            <div class="row">
                <div class="col s12 m6">
                    <label for="email">Адрес электронной почты</label>
                    <input type="email" name="email" id="email" value="${form.email}" required autofocus/>
                </div>
                <div class="col s12 m6">
                    <label for="role">Права в системе</label>
                    <select name="role" id="role" onclick="showHidePanel()" required>
                        <option value="ADMIN">Администратор</option>
                        <option value="EMPLOYEE">Сотрудник</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m6">
                    <label for="password">Пароль</label>
                    <input type="password" name="password" id="password" required/>
                </div>
                <div class="col s12 m6">
                    <label for="passwordRepeated">Повторить пароль</label>
                    <input type="password" name="passwordRepeated" id="passwordRepeated" required/>
                </div>
            </div>
            <div class="adminPanel">
                <div class="row">
                    <div class="col s12">
                        <label for="documentNumber">Серия/номер пасспорта</label>
                        <input type="text" name="documentNumber" id="documentNumber" value="${admin.documentNumber!}" required/>
                    </div>
                    <div class="col s12 m6">
                        <label for="firstName">Имя</label>
                        <input type="text" name="firstName" id="firstName" value="${admin.firstName!""}" required/>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12 m6">
                        <label for="lastName">Фамилия</label>
                        <input type="text" name="lastName" id="lastName" value="${admin.lastName!""}" required/>
                    </div>
                    <div class="col s12 m6">
                        <label for="middleName">Отчество</label>
                        <input type="text" name="middleName" id="middleName" value="${admin.middleName!""}" required/>
                    </div>
            </div>
            <div class="empolyeePanel" hidden>
                <div class="row">
                    <div class="col s12">
                        <label for="residentialAddress">Адрес проживания</label>
                        <input type="text" name="residentialAddress" id="residentialAddress"
                               value="${employee.residentialAddress!""}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12 m6">
                        <label for="phoneNumber">Номер телефона</label>
                        <input type="text" name="phoneNumber" id="phoneNumber" value="${employee.phoneNumber!""}"/>
                    </div>
                    <div class="col s12 m6">
                        <label for="position">Должность</label>
                        <input type="text" name="position" id="position" value="${employee.position!""}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12 m6">
                        <label for="employmentDate">Дата приема на работу</label>
                        <input type="text" name="employmentDate" id="employmentDate"
                               value="${(employee.employmentDate?string("dd/MM/yyyy"))!""}"/>
                    </div>
                    <div class="col s12 m6">
                        <label for="stateVeterinaryService">Место работы (ГосВетСлужба)</label>
                        <select name="SVSId" id="SVSselect">
                            <#list SVSList as SVS>
                                <option value="${SVS.id}">${SVS.serviceName}</option>
                            </#list>
                        </select>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn waves-effect waves-light">Добавить</button>
        </div>
    </div>
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