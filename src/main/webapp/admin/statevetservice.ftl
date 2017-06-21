<#-- @ftlvariable name="form" type="topprogersgroup.entity.UserCreateForm" -->
<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Создание Гос Вет Службы</title>
</head>
<body>
<#include "/template/navbar.ftl"/>

<form role="form" name="form" action="" method="post">
    <div class="row">
        <div class="col s12 m8 l6">
            <div class="row">
                <div class="s12 m6">
                    <label for="serviceName">Наименование учреждения</label>
                    <input type="text" name="serviceName" id="serviceName" value="${svService.serviceName!""}" required autofocus/>
                </div>
                <div class="s12 m6">
                    <label for="address">Адрес учереждения</label>
                    <input type="text" name="address" id="address" value="${svService.address!""}" required/>
                </div>
                <button type="submit" class="btn waves-effect waves-light">Добавить</button>
            </div>
        </div>
    </div>

</form>

</body>
</html>