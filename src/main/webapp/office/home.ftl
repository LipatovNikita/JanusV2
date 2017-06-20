<#import "/spring.ftl" as spring/>

<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Заявка на вывоз</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style_child.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/imageDrimmer.css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>

<#include "/template/navbar.ftl">

<div class="center-block section row">
    <div class="col s12">
        <div class="row picture-block">
            <div class="col s4">
                <a href="/office/pets">
                    <div class="imageDrimmerMyPets responsive-img">
                        <p class="popup-text">Мои питомцы</p>
                    <img src="/resources/images/pets.png" class="responsive-img" alt=""/>
                    </div>
                </a>
            </div>
            <div id="imgzat" class="col s4">
                <a href="/office/bids">
                    <img src="/resources/images/bids.png" class="responsive-img" alt=""/>
                </a>
            </div>
            <div class="col s4">
                <a href=/office/bids/create">
                    Создать заявку на Вет Док
                </a>
            </div>
        </div>
    </div>
</div>

<#--<footer class="footer">-->

<#--</footer>-->
</body>
</html>