<#-- @ftlvariable name="error" type="java.util.Optional<String>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href='/resources/materialize/css/materialize.css'/>
    <link rel="stylesheet" type="text/css" href='/resources/css/style.css'/>

    <meta charset="utf-8">
    <title>Home</title>
</head>
<body class="picbackground">
<#include "/template/navbar.ftl">

<div class="section picbackground">
    <div class="row">
        <div class="col s12 l6">
            <div class="card white">
                <div class="card-content black-text">
                    <h4 class="light">Регистрация</h4>
                    <br/>
                    <form role="form" action="/registation" method="post">
                        <div>
                            <label for="email">Адрес электронной почты</label>
                            <input type="email" name="email" id="email_reg" required/>
                        </div>
                        <div>
                            <label for="password">Пароль</label>
                            <input type="password" name="password" id="password_reg" required/>
                        </div>
                        <div>
                            <label for="password">Повторите пароль</label>
                            <input type="password" name="password" id="password_reg_repeat" required/>
                        </div>
                        <br/>
                        <div class="right-align">
                            <button class="btn" type="submit" name="action">Войти</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<#--<#if error.isPresent()>
<p>Допущена ошибка либо в адресе электронной почты, либо в пароле</p>
</#if>-->
</body>
</html>
