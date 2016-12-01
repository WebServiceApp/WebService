<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/restaurantStyle.css">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/Grid.css">
    <link rel="stylesheet" type="text/css" href="/assets/js/app.js">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:900&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ravi+Prakash" rel="stylesheet">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
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
<body>

<section class="section-restaurant">
    <div class="col span-2-of-5 box">
        <div class ="search-box">
            <input type="text" style="width: 60%;" />
            <input type="submit" value="Search" />
        </div>
    </div>
    <div class="row">

        <div class="col span-2-of-5 box">
            <label> Filter By  : &nbsp;
                <select id="restaurantChoice">
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
        </div>
    </div>

    <section class="section-restaurant-Box">
        <!--<h3>test</h3>-->
        <section class="section-restaurant-Box">
            <div class="row">
                <img style="border:6px groove gold;" src="assets/css/img/restaurantPage/burgerKingLogo.jpeg" alt="burgerKingLogo" class="RestaurantFrame">
                <div class="col span-1-of-4 box">

                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="assets/css/img/restaurantPage/vivo53.png"alt="vivo53" class="RestaurantFrame">

                        <h5>$$$</h5>
                        <br>
                        <h4>VIVO 53</h4>
                        <div align="right">
                            Pizza, Italian
                        </div>

                    </div>

                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="assets/css/img/restaurantPage/maruri.png" alt="Mayuri" class="RestaurantFrame">
                        <h5>$$</h5>
                        <br>
                        <h4>Mayuri</h4>
                        <div align="right">
                            Indian
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="assets/css/img/restaurantPage/burgerKingLogo.jpeg" alt="BurgerKing" class="RestaurantFrame">
                        <h5>$</h5>
                        <br>
                        <h4>Burger King</h4>
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
                        <img style="border:6px groove gold;" src="assets/css/img/restaurantPage/famousEzellChicken.png" alt="Ezell" class="RestaurantFrame">
                        <h5>$</h5>
                        <br>
                        <h4>Ezell's</h4>
                        <div align="right">
                            Fast Food, Burger
                        </div>
                    </div>

                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="assets/css/img/restaurantPage/theCheesecakeFactory.png" width="250" height="200" alt="CheeseFactory" class="RestaurantFrame">
                        <h5>$$</h5>
                        <br>
                        <h4>The Cheesecake Factory</h4>
                        <div align="right">
                            American
                        </div>
                    </div>

                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200"  width="250" height="200"  alt="Mayuri" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <br>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200"  width="250" height="200" alt="MoonSoon" class="RestaurantFrame">
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
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200"  width="250" height="200" alt="Kizuki" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>

                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200"  width="250" height="200"  alt="vivo53" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>

                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:4px groove gold;" src="http://placehold.it/250x200"  width="250" height="200" alt="Mayuri" class="RestaurantFrame">
                        <h5>price tag</h5>
                        <h4>Restaurant Name</h4>
                        <div align="right">
                            category
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;"src="http://placehold.it/250x200"  width="250" height="200" alt="BurgerKing" class="RestaurantFrame">
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
</body>
</html>