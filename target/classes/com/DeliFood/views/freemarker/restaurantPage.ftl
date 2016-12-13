<#--Resturant Page
Create by Miyu, Fuli
Date: 12/01/2016
Description: Issue: 1.Reading the rating int still have error. It is the type error
2. pricelevel need to connect to database
3. Open now delete, assume all resturant business hours are same
4. Fix the research input text and filter by-->


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/restaurantStyle.css">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/grid.css">
    <link rel="stylesheet" type="text/css" href="/assets/js/app.js">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:900&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ravi+Prakash" rel="stylesheet">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>Restaurant</title>
</head>
<header>
    <nav>
        <div class="row">
            <img src="/assets/css/img/sign/deliSign.png" alt="DeliFood Logo" class="logo">
            <a class="deliWord">DeliFood </a>
        </div>
    </nav>
</header>
<body
        ng-app="myApp"
        ng-controller="myCtrl">
<script>
    function myFunction() {
        var input, filter, table, tr, td, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    // Check to make sure that the page is fully loaded
    var interval = setInterval(function() {
        if(document.readyState === 'complete') {
            clearInterval(interval);
            init();
        }
    }, 100);

    function init() {
        var path = window.location.pathname;
        var indexOfSlash = path.lastIndexOf("/");
        var category = path.substr(indexOfSlash+1);
        if ( category !== "Restaurant") {
            var sel = document.getElementById('restaurantChoice');
            var opts = sel.options;
            for(var opt, j = 0; opt = opts[j]; j++) {
                if(opt.value === category) {
                    sel.selectedIndex = j;
                    break;
                }
            }
        }
    }

    function nextMenuPage(rid) {
        window.location = "http://localhost:8080/menu/" + rid;
    }

    // Handle option selection
    function filterHandler() {
        var category = document.getElementById("restaurantChoice").value;
        if ( category !== "All") {
            window.location = "http://localhost:8080/Restaurant/" + category;
        }
        if ( category === "All") {
            window.location = "http://localhost:8080/Restaurant";
        }
    }
    // Handle submit button
    function searchHandler() {
        var name = document.getElementById("searchBox").value;
        window.location = "http://localhost:8080/Restaurant/" + name;
    }

    // Handle star rating
    $(function () {
        $('span.stars').stars();
    });
    $.fn.stars = function () {
        return $(this).each(function () {
            $(this).html($('<span />').width(Math.max(0, (Math.min(5, parseFloat($(this).html())))) * 16));
        });
    }
</script>

<section class="section-restaurant">
    <div class="col span-2-of-5 box">
        <div class="search-box">
            <input id="searchBox" type="text" style=" width: 60%;"/>
            <input type="submit" value="Search" onclick="searchHandler()"/>
        </div>
    </div>
    <div class="row">

        <div class="col span-2-of-5 box">
            <label> Filter By : &nbsp;
                <select onchange="filterHandler();" id="restaurantChoice" >
                    <option value="All">All</option>
                    <option value="Sushi">Sushi</option>
                    <option value="Pizza">Pizza</option>
                    <option value="Indian">Indian</option>
                    <option value="Chinese">Chinese</option>
                    <option value="American">American</option>
                    <option value="Thai">Thai</option>
                    <option value="7">Mexican</option>
                    <option value="8">Korean</option>
                    <option value="9">Salad</option>
                    <option value="10">Italian</option>
                    <option value="11">Japanese</option>
                    <option value="12">Vegetarian</option>
                    <option value="13">Mediterranean</option>
                    <option value="14">Chicken</option>
                </select>
            </label>
        </div>

        <div class="col span-1.5-of-5 box">
            <div class="openNow">
                <input type="checkbox" value="Open"> Open Now
            </div>
        </div>
    </div>

    <section class="section-restaurant-Box">
        <div class="row">
            <#list restaurants as res>
                    <div class="col span-1-of-4 box">
                        <div class="RestaurantFrame">
                            <#--<a href="menu/${res.restaurant_id}">-->
                            <img style="border:0px groove gold;" src="/assets/css/img/restaurantPage/${res.name}.png"
                                 alt="${res.name}" class="RestaurantFrame" onclick="nextMenuPage(${res.restaurant_id?string.computer})">
                            <span class="stars">${res.rating}</span>

                            <#if res.priceLevel == 1 ><h5>$</h5></#if>
                            <#if res.priceLevel == 2 ><h5>$$</h5></#if>
                            <#if res.priceLevel == 3 ><h5>$$$</h5></#if>
                            <#if res.priceLevel == 4 ><h5>$$$$</h5></#if>
                            <#if res.priceLevel == 5 ><h5>$$$$$</h5></#if>
                            <br>
                            <h4>${res.name}</h4>
                            <div align="right">
                                ${res.category}
                            </div>
                        </div>
                    </div>
            </#list>
        </div>
    </section>
</section>

<div class="compantInfo">
    <div class="row">
        <div class="col span-1-of-3 box">
            <h3>Get to Know Us</h3>
            <a href="#"> About Us </a><br>
            <a href="#"> Blog </a>
        </div>

        <div class="col span-1-of-3 box">
            <h3>Let Us Help You</h3>
            <a href="#"> Support </a><br>
            <a href="#"> FAQ </a>
        </div>

        <div class="col span-1-of-3 box">
            <h3>Doing Business With Us</h3>
            <a href="#"> Become a partner Restaurant </a><br>
            <a href="#"> Become a Carrier </a>
        </div>
    </div>
</div>
</body>
</html>