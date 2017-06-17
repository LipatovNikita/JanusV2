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
<script type="text/javascript" rel="script" src="/resources/js/combodate.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/fastpassport.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/moment.js"></script>
<script type="text/javascript" rel="script" src="/webjars/jquery-validation/1.16.0/jquery.validate.js"></script>
<script type="text/javascript" rel="script" src="/webjars/jquery.steps/1.1.0/build/jquery.steps.js"></script>
<#include "/template/navbar.ftl">
<form name="/fast" id="form1" action="" method="POST" enctype="multipart/form-data">
    <div class="row main_block">
        <div class="col s12 block-top">
            <ul class="tabs" id="tabs">
                <li class="tab col"><a href="#block_passport" class="active" name="block_passport" data-toggle="tab">Основная
                    информация</a></li>
                <li class="tab col"><a href="#block_owner" name="block_owner" data-toggle="tab">Владелец</a></li>
                <li class="tab col"><a href="#block_immunization" name="block_immunization" data-toggle="tab">Иммунизация</a>
                </li>
                <li class="tab col"><a href="#block_vaccination" name="block_vaccination"
                                       data-toggle="tab">Вакцинация</a></li>
                <li class="tab col"><a href="#block_download" name="block_download" data-toggle="tab">Оригиналы</a></li>
            </ul>
        </div>
        <div id="block_passport" class="col s12 center-block">
            <section>
            <#include "/template/input/passport.ftl">
            </section>
        </div>

        <div id="block_owner" class="col s12 center-block">
            <section>
            <#include "/template/input/owner.ftl">
            </section>
        </div>

        <div id="block_immunization" class="col s12 center-block">
            <section>
            <#include "/template/input/immunization.ftl">
            </section>
        </div>

        <div id="block_vaccination" class="col s12 center-block">
            <section>
            <#include "/template/input/vaccination.ftl">
            </section>
        </div>
        <div id="block_download" class="col s12 center-block">
            <div id="download_file">
                <section>
                    <input type="file" name="images_p" multiple="multiple" id="images_p"/>
                </section>
                <div class="btn-block">
                    <a class="btn btn-primary btnPrevious">Previous</a>
                    <input class="btn btn-primary" type="submit" value="Отправить данные">
                </div>

          
            </div>
        </div>
    </div>
</form>
<footer class="footer">
    footer
</footer>
</body>
</html>
