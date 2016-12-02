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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>


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
</script>

<section class="section-restaurant">
    <div class="col span-2-of-5 box">
        <div class="search-box">
            <input type="text" style=" width: 60%;"/>
            <input type="submit" value="Search" onkeyup="myFunction()"/>
        </div>
    </div>
    <div class="row">

        <div class="col span-2-of-5 box">
            <label> Filter By : &nbsp;
                <select id="restaurantChoice" >
                    <option value="0">Sushi</option>
                    <option value="1">Pizza</option>
                    <option value="2">Indian</option>
                    <option value="3">Chinese</option>
                    <option value="4">American</option>
                    <option value="5">Thai</option>
                    <option value="6">Mexican</option>
                    <option value="7">Korean</option>
                    <option value="8">Salad</option>
                    <option value="9">Italian</option>
                    <option value="10">Japanese</option>
                    <option value="11">Vegetarian</option>
                    <option value="12">Mediterranean</option>
                    <option value="12">Chicken</option>
                </select>
            </label>
        </div>

        <div class="col span-1.5-of-5 box">
            <div class="openNow">
                <input type="checkbox" value="Open"> Open Now
            </div>
            <!--</div><div class="col span-1-of-7 box">&ndash;&gt;-->
            <!--<div class="withIn30min">-->
            <!--<input type="checkbox" value="Open"> With in 30m-->
            <!--</div>-->
            <!--</div>-->
            <!--<div class="col span-1.5-of-7 box">-->
            <!--<div class="Vegetarian">-->
            <!--<input type="checkbox" value="Open"> Vegetarian Option-->
            <!--</div>-->
            <!--</div>
            <!---->
        </div>
    </div>

    <section class="section-restaurant-Box">
        <!--<h3>test</h3>-->
        <section class="section-restaurant-Box">
            <div class="row">

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">

                        <img style="border:0px groove gold;" src="/assets/css/img/restaurantPage/kiZuKi.png"   alt="Kizuki" class="RestaurantFrame">
                        <span class="stars">3</span>

                        <script>
                            $(function () {
                                $('span.stars').stars();
                            });
                            $.fn.stars = function () {
                                return $(this).each(function () {
                                    $(this).html($('<span />').width(Math.max(0, (Math.min(5, parseFloat($(this).html())))) * 16));
                                });
                            }
                        </script>
                        <h5>$$</h5>
                        <#--<script>-->
                            <#--angular.module('myApp', [])-->
                                    <#--.controller('myCtrl', ['$scope', function($scope) {-->
                                        <#--$scope.count = 0;-->
                                        <#--$scope.price = 0.00;-->
                                        <#--$scope.mPriceLevel= function() {-->
                                            <#--if()-->
                                        <#--};-->
                                    <#--}]);-->
                        <#--</script>-->

                        <br>
                        <h4>${restaurants[4].name}</h4>
                        <h6>Japanese, Ramen</h6>
                    </div>
                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="/assets/css/img/restaurantPage/vivo53.png"
                              alt="vivo53" class="RestaurantFrame">
                        <span class="stars">3</span>

                        <h5>$$$</h5>
                        <br>
                        <h4>${restaurants[6].name}</h4>
                        <div align="right">
                            Pizza, Italian
                        </div>

                    </div>

                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="/assets/css/img/restaurantPage/maruri.png"
                              alt="Mayuri" class="RestaurantFrame">
                        <span class="stars">3</span>
                        <h5>$$</h5>
                        <br>
                        <h4>${restaurants[5].name}</h4>
                        <div align="right">
                            Indian
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="/assets/css/img/restaurantPage/burgerKingLogo.jpeg"
                              alt="BurgerKing" class="RestaurantFrame">
                        <span class="stars">3</span>
                        <h5>$</h5>
                        <br>
                        <h4>${restaurants[1].name}</h4>
                        <div align="right">
                            Fast Food, Burger
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section-restaurant-Box1">
            <div class="row">

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;"
                             src="/assets/css/img/restaurantPage/famousEzellChicken.png" 
                             alt="Ezell" class="RestaurantFrame">
                        <span class="stars">3</span>
                        <h5>$</h5>
                        <br>
                        <h4>${restaurants[3].name}</h4>
                        <div align="right">
                            Fast Food, Burger
                        </div>
                    </div>

                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;"
                             src="/assets/css/img/restaurantPage/theCheesecakeFactory.png" 
                             alt="CheeseFactory" class="RestaurantFrame">
                        <span class="stars">3</span>
                        <h5>$$</h5>
                        <br>
                        <h4>${restaurants[2].name}</h4>
                        <div align="right">
                            American
                        </div>
                    </div>

                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="/assets/css/img/restaurantPage/blueSushi.jpeg" 
                             alt="Mayuri" class="RestaurantFrame">
                        <span class="stars">3</span>
                        <h5>$$</h5>
                        <br>
                        <h4>${restaurants[0].name}</h4>
                        <div align="right">
                            category
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="http://placehold.it/250x200" 
                             alt="MoonSoon" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section-restaurant-Box2">
            <div class="row">

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="http://placehold.it/250x200" 
                             alt="Kizuki" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>

                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="http://placehold.it/250x200" 
                             alt="vivo53" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>

                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="http://placehold.it/250x200"
                             alt="Mayuri" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:0px groove gold;" src="http://placehold.it/250x200" 
                             alt="BurgerKing" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>
                </div>
            </div>
        </section>
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