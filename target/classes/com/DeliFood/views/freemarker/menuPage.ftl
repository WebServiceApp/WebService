<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/assets/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/Grid.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/menuStyle.css">
    <link rel="stylesheet" type="text/javascript" href="/assets/js/app.js">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:900&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script type="text/javascript" src="http://www.datejs.com/build/date.js"></script>

    <title>Menu</title>
</head>

<header>
    <nav>
        <div class="row">
            <img src="/assets/css/img/sign/deliLogo.png" alt="DeliFood Logo" class="logo">
            <a class="deliWord">DeliFood </a>
        </div>
    </nav>
</header>

<body
        ng-app="myApp"
        ng-controller="myCtrl">

<div class="restaurant_menu">

    <div class="row">
        <div class="col span-0.5-of-3 box">
            <img src="/assets/css/img/restaurantPage/burgerKingLogo.png" alt="restaurant Logo"
                 class="restaurant_Logo">
        </div>

        <div class="col span-1.5-of-3 box">
            <br>
            <div class="restaurantDetail">
                <h2>Burger King</h2>
                <p class="delivery_time">Delivery Time: 10:00 AM to 10:00 PM</p>


                <p class="get_orderTime"> Get order time: 45-50 min</p>
                <p class="restaurant_address"> 11723 NE 8th St Bellevue, WA 98005</p>
            </div>
        </div>

        <div class="col span-1-of-3 box">
            <img src="/assets/css/img/sign/closeSign.png" alt="Sign Logo" id="Sign" style="width: 100%; height: auto;
    display: block; padding: 10% 30%;">
            <script>
                var compareTime = function (){
                    var d = new Date();
                    if(d.getHours() >= 10 && d.getHours() <= 22){
                        document.getElementById('Sign').src="/assets/css/img/sign/openSign.png";
//                            document.write("'/assets/css/img/sign/openSign.png'");
                    }
                }();
            </script>
        </div>


    </div>

    <div class="section-MenuCategoriesList">
        <ul>
            <li><a href="#beverages"> Beverages</a></li>
            <li><a href="#breakfast"> Breakfast</a></li>
            <li><a href="#burger"> Burger</a></li>
            <li><a href="#chickMore"> Chicken & More</a></li>
            <li><a href="#coffee"> Coffee & Frappes</a></li>
        </ul>

        <div class="dropdown">
            <button class="dropbtn">More</button>
            <div class="dropdown-content">
                <a href="#hotdog"> Hotdogs</a>
                <a href="#kingMeal"> King JR Meals</a>
                <a href="#salad"> Salad & Veggies</a>
                <a href="#sides"> Sides</a>
                <a href="#sweets"> Sweets</a>
                <a href="#valueMenu"> Value Menu</a>
            </div>
            <!--<button class="dropbtn">More</button>-->
        </div>
    </div>

    <div class="section-menuimage">
        <div id="beverages">
            <div class="row">
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg" alt="Apple Juice">
                    <div class="imageWords">
                        <p class="item">Apple Juice</p>
                        <p class="price">$5.00<br></p>
                        <button ng-click="myFunc()" class="order">Add to Cart</button>
                        </p>

                        <script>
                            angular.module('myApp', [])
                                    .controller('myCtrl', ['$scope', function($scope) {
                                        $scope.count = 0;
                                        $scope.price = 0.00;
                                        $scope.myFunc = function() {
                                            $scope.count++;
                                            $scope.price = $scope.price + 5.00;
                                        };
                                    }]);
                        </script>

                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg">
                    <div class="imageWords">
                        <p class="item">Apple Juice</p>
                        <p class="price">$5.00<br></p>
                        <button class="order">Add to Cart</button>

                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg">
                    <div class="imageWords">
                        <p class="item">Apple Juice</p>
                        <p class="price">$5.00<br></p>
                        <button class="order">Add to Cart</button>

                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg">
                </div>
            </div>
            <div class="row">
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/Beverages/Apple_Juice_Beverages.jpg">
                </div>
            </div>
        </div>
        <div id="burger">
            <div class="row">
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
            </div>
            <div class="row">
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Burger/baconCheeseBurger.png">
                </div>
            </div>
        </div>
        <div id="breakfast">
            <div class="row">
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
            </div>
            <div class="row">
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
                <div class="col span-1-of-4 box">
                    <img src="/assets/css/img/burgerKing/burgerKing_Breakfast/BK_Web_EGGNORMOUS_300x270.jpg">
                </div>
            </div>
        </div>
    </div>

</div>

<div class="orderInfo" >
    <h2 class="orderInfoword">Your Order</h2>
    <div class="orderSummary">
        <div class="row">
            <div class="col span-1-of-3 box">
                <p class="orderitem">Item</p>
            </div>

            <div class="col span-1-of-3 box">
                <p class="quality">Qty</p>
            </div>

            <div class="col span-1-of-3 box">
                <p class="price">Price</p>
            </div>
        </div>
        <div class="row">
            <div class="col span-1-of-3 box">
                <p>Apple Juice</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>{{count}}</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>$ {{price}}</p>
            </div>
        </div>
        <div class="row">
            <div class="col span-1-of-3 box">
                <p>Burger</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>1</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>$8.00</p>
            </div>
        </div>
        <div class="row">
            <div class="col span-1-of-3 box">
                <p>Burger</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>1</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>$8.00</p>
            </div>
        </div>
        <div class="row">
            <div class="col span-1-of-3 box">
                <p>Burger</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>1</p>
            </div>

            <div class="col span-1-of-3 box">
                <p>$8.00</p>
            </div>
        </div>
    </div>
    <div class="orderPriceSummary">
        <div class="row">
            <div class="col span-1-of-2 box">
                <p>Subtotal</p>
            </div>

            <div class="col span-1-of-2 box">
                <p class="subtotalprice">$29.00</p>
            </div>
        </div>

        <div class="row">
            <div class="col span-1-of-2 box">
                <p>Tax</p>
            </div>

            <div class="col span-1-of-2 box">
                <p class="taxAmount">$1.45</p>
            </div>
        </div>

        <div class="row">
            <div class="col span-1-of-2 box">
                <p class="totalAmount">Total: </p>
            </div>

            <div class="col span-1-of-2 box">
                <p class="totalPrice">$30.45</p>
            </div>
        </div>
    </div>
    <div class="checkbtn">
        <button onclick=location.href="checkOut.html">Check Out</button>
    </div>
</div>
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