<#import "/spring.ftl" as spring/>

<html>
<head>
    <title>Add Pet Passport</title>
</head>
<body>
    <div>
        <fieldset>
            <legend>Добавить Адрес</legend>
            <form name="address" action="" method="POST">
                <div class="row">
                    <div class="input-field col s6">
                        <input type="text" id="country" name="country" value="${address.country!""}" class="validate">
                        <label for="country">country</label>
                    </div>
                    <div class="input-field col s6">
                        <input type="text" id="region" name="region" value="${address.region!""}" class="validate">
                        <label for="region">region</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="city" name="city" value="${address.city!""}" class="validate">
                        <label for="city">city</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="street" name="street" value="${address.street!""}" class="validate">
                        <label for="street">street</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="building" name="building" value="${address.building!""}" class="validate">
                        <label for="building">building</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="apartment" name="apartment" value="${address.apartment!""}" class="validate">
                        <label for="apartment">apartment</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="postcode" name="postcode" value="${address.postcode!""}" class="validate">
                        <label for="postcode">postcode</label>
                    </div>
                </div>
                <input type="submit" value="Create" />
            </form>
        </fieldset>
    </div>
</body>
</html>

<#--@Id-->
<#--@GeneratedValue(strategy = GenerationType.IDENTITY)-->
<#--@Column(name = "id", unique = true, nullable = false)-->
<#--private int id;-->

<#--@Column(name = "country")-->
<#--private String country;-->

<#--@Column(name = "region")-->
<#--private String region;-->

<#--@Column(name = "city")-->
<#--private String city;-->

<#--@Column(name = "street")-->
<#--private String street;-->

<#--@Column(name = "building")-->
<#--private String building;-->

<#--@Column(name = "apartment")-->
<#--private String apartment;-->

<#--@Column(name = "postcode")-->
<#--private int postcode;-->

<#--@OneToOne(cascade = CascadeType.ALL, mappedBy = "address")-->
<#--private Owner owner;-->

<#--@OneToOne(cascade = CascadeType.ALL, mappedBy = "addressOfLaboratory")-->
<#--private Quarantine quarantine;-->