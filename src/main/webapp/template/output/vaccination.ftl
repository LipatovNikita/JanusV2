<div class="row">
    <div class="col s12">
        <input type="hidden" name="id" value="${vaccination.id}">
    </div>
</div>


<div class="row">
    <div class="input-field col s12">
        <p>${vaccination.seriesOfVaccine!""}</p>
        <label for="seriesOfVaccine">Серия вакцины</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s4">
        <p>${vaccination.typeOfVaccine!""}</p>
        <label for="typeOfVaccine">Тип вакцины</label>
    </div>

    <#--<div class="input-field col s4">-->
        <#--<div id="labelDateOfVaccine">-->
            <#--<label>Дата вакцинации</label>-->
            <#--<div>-->
                <#--<script>-->
                    <#--$(function () {-->
                        <#--$('#dateOfImplantation').combodate({-->
                            <#--value: new Date(),-->
                            <#--minYear: 2012,-->
                            <#--maxYear: moment().format('YYYY')-->
                        <#--});-->
                    <#--});-->
                <#--</script>-->
                <#--<input type="text" id="dateOfVaccine" name="dateOfVaccine"-->
                       <#--value="${passport.dateOfVaccine?string("dd/MM/yyyy")}" format="DD/MM/YYYY"-->
                       <#--data-template="D MMM YYYY">-->
            <#--</div>-->
        <#--</div>-->
    <#--</div>-->
    <#--<div class="input-field col s4">-->
        <#--<div id="labelValidUntil">-->
            <#--<label>Действительна до</label>-->
            <#--<div>-->
                <#--<script>-->
                    <#--$(function () {-->
                        <#--$('#dateOfImplantation').combodate({-->
                            <#--value: new Date(),-->
                            <#--minYear: 2012,-->
                            <#--maxYear: moment().format('YYYY')-->
                        <#--});-->
                    <#--});-->
                <#--</script>-->
                <#--<input type="text" id="validUntil" name="validUntil"-->
                       <#--value="${passport.validUntil?string("dd/MM/yyyy")}" format="DD/MM/YYYY"-->
                       <#--data-template="D MMM YYYY">-->
            <#--</div>-->
        <#--</div>-->
    <#--</div>-->
</div>
