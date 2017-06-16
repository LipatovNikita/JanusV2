<#-- @ftlvariable name="form" type="topprogersgroup.entity.UserCreateForm" -->
<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
</head>
<body>
<h1>Создание нового пользователя</h1>

<form role="form" name="form" action="" method="post">
    <div>
        <label for="email">Адрес электронной почты</label>
        <input type="email" name="email" id="email" value="${form.email}" required autofocus/>
    </div>
    <div>
        <label for="password">Пароль</label>
        <input type="password" name="password" id="password" required/>
    </div>
    <div>
        <label for="passwordRepeated">Повторить пароль</label>
        <input type="password" name="passwordRepeated" id="passwordRepeated" required/>
    </div>
    <div>
        <label for="role">Права в системе</label>
        <select name="role" id="role" onclick="showHidePanel()" required>
            <option <#if form.role == 'ADMIN'>selected</#if> >Администратор</option>
            <option <#if form.role == 'EMPLOYEE'>selected</#if> >Сотрудник</option>
        </select>
    </div>

    <div hidden>
        <div class="adminPanel">
            <label for="firstName">Имя</label>
            <input type="text" name="firstName" id="firstName" required/>

            <label for="lastName">Фамилия</label>
            <input type="text" name="lastName" id="lastName" required/>

            <label for="passwordRepeated">Отчество</label>
            <input type="text" name="middleName" id="middleName" required/>

            <label for="documentNumber">Серия номер пасспорта</label>
            <input type="text" name="documentNumber" id="documentNumber" required/>
        </div>
        <div class="empolyeePanel">
            <label for="firstName">Имя</label>
            <input type="text" name="firstName" id="firstName1" required/>

            <label for="lastName">Фамилия</label>
            <input type="text" name="lastName" id="lastName1" required/>

            <label for="passwordRepeated">Отчество</label>
            <input type="text" name="middleName" id="middleName1" required/>

            <label for="documentNumber">Серия номер пасспорта</label>
            <input type="text" name="documentNumber" id="documentNumber1" required/>

            <label for="residentialAddress">Адрес проживания</label>
            <input type="text" name="residentialAddress" id="residentialAddress" required/>

            <label for="phoneNumber">Номер телефона</label>
            <input type="text" name="phoneNumber" id="phoneNumber" required/>
        </div>
    </div>


    <script>
        function showHidePanel() {
            var select = document.getElementById("role");
            var value = select.options[select.selectedIndex].value;
            if (value == "ADMIN") {
                $(".empolyeePanel").hide(1000);
                $(".adminPanel").first().show("fast", function showNext() {
                    $(this).next(".adminPanel").show("fast", showNext);
                });
            }
            else {
                $(".adminPanel").hide(1000);
                $(".empolyeePanel").first().show("fast", function showNext() {
                    $(this).next(".empolyeePanel").show("fast", showNext);
                });
            }
        }
    </script>


    <button type="submit">Добавить</button>
</form>

<@spring.bind "form" />
<#if spring.status.error>
<ul>
    <#list spring.status.errorMessages as error>
        <li>${error}</li>
    </#list>
</ul>
</#if>

</body>
</html>