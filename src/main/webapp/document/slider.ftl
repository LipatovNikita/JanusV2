<#import "/spring.ftl" as spring/>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Паспорт питомца</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href='/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/css/pgwslider.css'/>
    <link rel="stylesheet" type="text/css" href='/css/style_child.css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<script type="text/javascript" rel="script" src="/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" rel="script" src="/js/office.js"></script>
<script type="text/javascript" rel="script" src="/js/pgwslider.js"></script>
<#include "/template/navbar.ftl">
<div class="section">
    <div class="col s12 m4">
        <h3 class="light">Паспорт "Кличка"</h3>
    </div>
    <div class="row">
        <div class="col s5">
            <ul class="pgwSlider">
                <li><img src="/test.jpg" alt="Заголовок из alt атрибута"></li>
                <li><img src="/test.jpg" alt="Заголовок из alt атрибута"></li>
                <li>
                    <img src="/test.jpg" alt="">
                    <span>Заголовок из тега span</span>
                </li>
                <li>
                    <img src="/test.jpg" alt="">
                    <span>Заголовок из тега span</span>

                </li>
                <li>
                    <img src="/test.jpg" alt="">
                    <span>Заголовок из тега span</span>
                </li>
                <li>
                    <img src="/test1.jpg" alt="">
                    <span>Заголовок из тега span</span>
                </li>
            </ul>
        </div>

        <div class="col s7">
            Здесь переключающаяся панельска с данными, чтобы можно было сверить сотруднику
            Collapsible первый самый вроде бы неплохо
        </div>
    </div>
</div>
<footer>
    footer
</footer>
</body>
</html>