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

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img src="data:image/>png;base64, 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" alt="burgerking" class="RestaurantFrame">

                        <div class="testRating" > The rating is: ${restaurants[0].rating}</div>
                        #--<fieldset class="rating">-->
                            <#--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                            <#--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                            <#--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                            <#--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                            <#--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                            <#--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                            <#--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                            <#--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                            <#--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                            <#--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <#--</fieldset>-->
                        <h5>price level</h5>
                        <br>
                        <h4>${restaurants[1].name}</h4>
                        <fieldset class="rating">
                            <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                            <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                            <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                            <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                            <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                            <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                            <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                            <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                            <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                            <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                        </fieldset>
                        <h6>Japanese, Ramen</h6>
                    </div>
                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="resources/css/img/restaurantPage/vivo53.png"alt="vivo53" class="RestaurantFrame">
                        <#--<fieldset class="rating">-->
                        <#--input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <#--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <#--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <#--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <#--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <#--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>&ndash;&gt;-->
                        <#--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <#--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <#--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <#--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <#--</fieldset>-->
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
                        <img style="border:6px groove gold;" src="resources/css/img/restaurantPage/maruri.png" alt="Mayuri" class="RestaurantFrame">
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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
                        <img style="border:6px groove gold;" src="resources/css/img/restaurantPage/burgerKingLogo.jpeg" alt="BurgerKing" class="RestaurantFrame">
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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
                        <img style="border:6px groove gold;" src="resources/css/img/restaurantPage/famousEzellChicken.png" alt="Ezell" class="RestaurantFrame">
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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
                        <img style="border:6px groove gold;" src="resources/css/img/restaurantPage/theCheesecakeFactory.png" width="250" height="200" alt="CheeseFactory" class="RestaurantFrame">
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->

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
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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
                        <!--<fieldset class="rating">-->
                        <!--<input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>-->
                        <!--<input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>-->
                        <!--<input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>-->
                        <!--<input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>-->
                        <!--<input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>-->
                        <!--<input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>-->
                        <!--<input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>-->
                        <!--<input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>-->
                        <!--<input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>-->
                        <!--<input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>-->
                        <!--</fieldset>-->
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