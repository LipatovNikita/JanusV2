<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Создание Гос Вет Службы</title>
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style.css'/>

    <script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.js"></script>
</head>
<body>
<#include "/template/navbar.ftl"/>

<#if svServiceList??>
    <#list svServiceList as svService>
    <div class="row">
        <div class="col s9 m6 l5">
            <div class="row">
                <div class="col s5">
                    <label>Наименование учреждения</label>
                ${svService.serviceName!""}
                </div>
                <div class="col s5">
                    <label>Адрес учереждения</label>
                ${svService.address!""}
                </div>
            </div>
            <div class="col s3 m2 l1">
                <div class="row">
                    <a href="" class="waves-effect waves-light btn">Редактировать</a>
                </div>
                <div class="row">
                    <a href="" class="waves-effect waves-light btn">Удалить</a>
                </div>
            </div>
        </div>
    </div>
    </#list>
</#if>

</body>
</html>