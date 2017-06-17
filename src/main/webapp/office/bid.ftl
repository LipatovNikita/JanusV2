<#import "/spring.ftl" as spring/>

<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Заявка на вывоз</title>
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
<script type="text/javascript" rel="script" src="/resources/js/office.js"></script>
<script type="text/javascript" rel="script" src="/resources/js/moment.js"></script>
<#include "/template/navbar.ftl">
<div class="center-block section row">
    <div class="col l6 m6 s12">
        <div class="card">

            <div>
                <label for="countPet">Количество петомцев</label>
                <input type="text" name="countPet" id="countPet" value="${.countPet!0}" required autofocus/>
            </div>
            <div>
                <label for="countSeats">Количество мест под петомцев</label>
                <input type="text" name="countSeats" id="countSeats" value="${.countSeats!0}" required/>
            </div>
            <#--<div id="labelDepartureDate" class="input-field col s3">-->
                <#--<label>Дата рождения</label>-->
                <#--<div>-->
                    <#--<script>-->
                        <#--$(function () {-->
                            <#--$('#departureDate').combodate({-->
                                <#--value: new Date(),-->
                                <#--minYear: 1950,-->
                                <#--maxYear: moment().format('YYYY')-->
                            <#--});-->
                        <#--});-->
                    <#--</script>-->
                    <#--<input type="text" id="departureDate" name="departureDate"-->
                           <#--value="${(passport.departureDate?string("dd-MM-yyyy"))!""}" format="DD-MM-YYYY"-->
                           <#--data-template="D MMM YYYY">-->
                <#--</div>-->
            <#--</div>-->
            <#--<div>ВПРИНЦЕПИ СДЕСЬ НЕ НУЖНА ЕСЛИ ЗАЯВКУ БУДЕМ В 2 ШАГА ДЕЛАТЬ-->
                <#--<label for="route">Тип транспорта</label>-->
                <#--<input type="text" name="route" id="route" value="${.route!""}" required/>-->
                <#--@OneToOne(cascade = CascadeType.ALL)-->
                <#--@JoinColumn(name = "route")-->
                <#--private Route route;-->
            <#--</div>-->


            <#--<div>-->
                <#--<label for="route">Тип транспорта</label>-->
                <#--<input type="text" name="route" id="route" value="${.route!""}" required/>-->
                <#--@ManyToMany(cascade = CascadeType.ALL)-->
                <#--@JoinTable(name = "pet_bid", joinColumns = @JoinColumn(name = "pet_id"),-->
                <#--inverseJoinColumns = @JoinColumn(name = "bid_id"))-->
                <#--private List<Pet> pets;-->
            <#--</div>-->
        </div>
    </div>
</div>
<footer class="footer">

</footer>
</body>
</html>