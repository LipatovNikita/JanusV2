<#import "/spring.ftl" as spring/>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Отправленые заявки</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/pgwslider.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style_child.css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/office.js"></script>

<#include "/template/navbar.ftl">
<#--Поиск заявок-->
<#include "/template/search/findbids.ftl">

<div class="section">
<#if vetDocList??>
    <table class="striped responsive-table">
        <thead>
        <tr>
            <th>Номер свидетельства</th>
            <th>Дата оформления свидетельства</th>
            <th>Время пребывания животного в РФ</th>
            <th>Гос. Вет. Служба</th>
            <th>Оформил сотрудник</th>
            <th>Функуции</th>
        </tr>
        </thead>
        <tbody>
            <#list vetDocList as vetDoc>
            <tr>
                <td>${vetDoc.number!0}</td>
                <td>${(vetDoc.issueDate?string("dd/MM/yyyy"))!""}</td>
                <td>${vetDoc.residenceTime!0}</td>
                <td>${vetDoc.stateVeterinaryService.serviceName!""}</td>
                <td>${vetDoc.employee.firstName!""} ${vetDoc.employee.lastName!""}</td>
                <td>
                    <a href="/docs/bid/${bid.id}"><#--todo: Подставить ссылку-->
                        Оформить Вет. сертификат
                    </a>
                    <a href="/docs/vet/${vetDoc.id}">
                        Просмотреть
                    </a>
                </td>
            </tr>
            </#list>
        </tbody>
    </table>

    <#if numberPage?? >
        <#include "/template/pagination/pagvetdoc.ftl"/>
    </#if>
</#if>
</div>

<footer>
    footer
</footer>
</body>
</html>

