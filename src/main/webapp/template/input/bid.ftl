<div class="row">
    <div class="col s6">
        <label for="countPet">Количество петомцев</label>
        <input type="text" name="countPet" id="countPet" value="${bid.countPet!0}" required autofocus/>
    </div>
    <div class="col s6">
        <label for="countSeats">Количество мест под петомцев</label>
        <input type="text" name="countSeats" id="countSeats" value="${bid.countSeats!0}" required/>
    </div>
</div>
<div>
<#--<div id="labelDepartureDate" class="input-field col s6">-->
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
<#--value="${(bid.departureDate?string("dd-MM-yyyy"))!""}" format="DD-MM-YYYY"-->
<#--data-template="D MMM YYYY">-->
<#--</div>-->
<#--</div>-->
<#--todo:Множественный селект для выбора питомцев и выбор маршрута-->
<#--<div>-->
<#--<label for="route">Тип транспорта</label>-->
<#--<input type="text" name="route" id="route" value="${.route!""}" required/>-->
<#--@ManyToMany(cascade = CascadeType.ALL)-->
<#--@JoinTable(name = "pet_bid", joinColumns = @JoinColumn(name = "pet_id"),-->
<#--inverseJoinColumns = @JoinColumn(name = "bid_id"))-->
<#--private List<Pet> pets;-->
<#--</div>-->
</div>