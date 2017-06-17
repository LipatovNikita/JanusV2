<#-- @ftlvariable name="form" type="topprogersgroup.entity.UserCreateForm" -->
<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
</head>
<body>
<h1>Создание ПКВП</h1>

<form role="form" name="form" action="" method="post">
    <div>
        <label for="cpName">Наименование учреждения</label>
        <input type="text" name="cpName" id="cpName" value="${checkPoint.cpName!""}" required autofocus/>
    </div>
    <div>
        <label for="address">Адрес учереждения</label>
        <input type="text" name="address" id="address" value="${checkPoint.address!""}" required/>
    </div>
    <div>
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
    <button type="submit">Добавить</button>
</form>

</body>
</html>