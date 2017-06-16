<#-- @ftlvariable name="form" type="topprogersgroup.entity.UserCreateForm" -->
<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
</head>
<body>
<h1>Создание Гос Вет Службы</h1>

<form role="form" name="form" action="" method="post">
    <div>
        <label for="serviceName">Наименование учреждения</label>
        <input type="text" name="serviceName" id="serviceName" value="${statevetservice.serviceName}" required autofocus/>
    </div>
    <div>
        <label for="address">Адрес учереждения</label>
        <input type="text" name="address" id="address" value="${statevetservice.address}" required/>
    </div>
    <button type="submit">Добавить</button>
</form>

</body>
</html>