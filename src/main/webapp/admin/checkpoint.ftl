<#-- @ftlvariable name="form" type="topprogersgroup.entity.UserCreateForm" -->
<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Создание ПКВП</title>
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style.css'/>

    <script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.js"></script>
</head>
<body>
<#include "/template/navbar.ftl"/>

<form role="form" name="form" action="" method="post">
    <fieldset class="row">
        <div class="col s12 m8 l6">
            <div class="row">
                <div class="col s12 m6">
                    <label for="cpName">Наименование учреждения</label>
                    <input type="text" name="cpName" id="cpName" value="${checkPoint.cpName!""}" required autofocus/>
                </div>
                <div class="col s12 m6">
                    <label for="address">Адрес учереждения</label>
                    <input type="text" name="address" id="address" value="${checkPoint.address!""}" required/>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m6">
                    <label for="phonenumber">Номер телефона</label>
                    <input type="text" name="phoneNumber" id="phoneNumber" value="${checkPoint.phoneNumber!""}" required/><#--placeholder="(XXX)-XXX-XXXX" pattern="(XXX)-XXX-XXXX"-->
                </div>
            <#--<div>-->
            <#--<label for="inspector">Сотрудник россельхоза</label>-->
            <#--<select name="inspector" id="inspector" required>-->
            <#--<#list inspector as iKey, iValue>-->
            <#--<option value="${iKey}">${iValue.lastName} ${iValue.firstName} ${iValue.middleName}</option>-->
            <#--</#list>-->
            <#--</select>-->
            <#--</div>-->
            </div>
            <button type="submit" class="btn waves-effect waves-light">Добавить</button>
        </div>
    </fieldset>
</form>

</body>
</html>