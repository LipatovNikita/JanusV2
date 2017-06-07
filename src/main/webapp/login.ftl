<#-- @ftlvariable name="error" type="java.util.Optional<String>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
</head>
<body>
<h1>Вход</h1>
<form role="form" action="/login" method="post">
    <div>
        <label for="email">Адрес электронной почты</label>
        <input type="email" name="email" id="email" required autofocus/>
    </div>
    <div>
        <label for="password">Пароль</label>
        <input type="password" name="password" id="password" required/>
    </div>
    <div>
        <label for="remember-me">Запомнить</label>
        <input type="checkbox" name="remember-me" id="remember-me"/>
    </div>
    <button type="submit">Войти</button>
</form>

<#if error.isPresent()>
<p>Допущена ошибка либо в адресе электронной почты, либо в пароле</p>
</#if>
</body>
</html>