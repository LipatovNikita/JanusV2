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
<#if checkPointList??>
    <#list checkPointList as checkPoint>
    <div class="row">
        <div class="col s9 m6 l5">
            <div class="row">
                <div class="col s6">
                    <label>Наименование учреждения</label>
                ${checkPoint.cpName!""}
                </div>
                <div class="col s6">
                    <label>Номер телефона</label>
                ${checkPoint.phoneNumber!""}
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <label>Адрес учереждения</label>
                ${checkPoint.address!""}
                </div>
            </div>
        </div>
        <div class="col s3 m2 l1">
            <div class="row">
                <a href="/admin/checkpoint/list/${checkPoint.id}/restore" class="waves-effect waves-light btn">
                    Редактировать
                </a>
            </div>
        </div>
    </div>
    </#list>
</#if>


</body>
</html>