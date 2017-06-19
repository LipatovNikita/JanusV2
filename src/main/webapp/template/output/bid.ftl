<div class="row">
    <div class="col s12 m4">
        <label>Количество петомцев</label>
        <p>${bid.countPet!0}</p>
    </div>
    <div class="col s12 m4">
        <label>Количество мест под петомцев</label>
        <p>${bid.countSeats!0}</p>
    </div>
    <div class="col s12 m4">
        <label>Дата отправления</label>
        <p>${(bid.departureDate?string("dd-MM-yyyy"))!""}</p>
    </div>
</div>

<div class="row">
    <div class="col s12">
        <label>Маршрут</label>
        <#include "/template/output/route.ftl"/>
    </div>
</div>
<div class="row">
    <div class="col s12">
        <label>Петомцы</label>
        <#include "/template/output/petstable.ftl"/>
    </div>
</div>
