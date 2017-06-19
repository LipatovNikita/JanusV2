<#import "/spring.ftl" as spring/>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Паспорт питомца</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style_child.css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>

<script type="text/javascript" rel="script" src="/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" rel="script" src="/resources/materialize/js/materialize.js"></script>

<#include "/template/navbar.ftl">
<div class="center-block section">
    <ul class="row photos">
    <#list pets as pet>
        <li class="col s12 m6 l4">
            <a href="/office/mypets/${pet.id}">
                <div class="card">
                    <div class="card-image">
                        <img src="${pet.passport.passportPhoto}" class="responsive-img" alt=""/>
                    </div>
                    <div class="card-content">
                        <h3 class="light">${pet.passport.petName!""}</h3>
                    </div>
                </div>
            </a>
        </li>
    </#list>
    </ul>
</div>

<footer class="footer">
    footer
</footer>
</body>
</html>