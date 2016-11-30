<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="/assetsvendors/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/restaurantStyle.css">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/grid.css">
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

                        <img style="border:6px groove gold;" src="/assets/css/img/restaurantPage/kiZuKi.png" width=100%
                             height=auto alt="Kizuki" class="RestaurantFrame">
                        <div><span class="stars-container stars-0">★★★★★</span></div>
                        <div><span class="stars-container stars-10">★★★★★</span></div>
                        <script>
                        </script>
                        <h5>$$</h5>
                        <br>
                        <h4>${restaurants[2].name}</h4>
                        <h6>Japanese, Ramen</h6>
                    </div>
                </div>

                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="/assets/css/img/restaurantPage/vivo53.png"
                             width="250" height="200" alt="vivo53" class="RestaurantFrame">
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
                        <h5>$$$</h5>
                        <br>
                        <h4>${restaurants[4].name}</h4>
                        <div align="right">
                            Pizza, Italian
                        </div>

                    </div>

                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="/assets/css/img/restaurantPage/maruri.png"
                             width="250" height="200" alt="Mayuri" class="RestaurantFrame">
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
                        <h4>${restaurants[3].name}</h4>
                        <div align="right">
                            Indian
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="/assets/css/img/restaurantPage/burgerKingLogo.jpeg"
                             width="250" height="200" alt="BurgerKing" class="RestaurantFrame">
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
                        <h4>${restaurants[0].name}</h4>
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
                        <img style="border:6px groove gold;"
                             src="/assets/css/img/restaurantPage/famousEzellChicken.png" width="250" height="200"
                             alt="Ezell" class="RestaurantFrame">
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
                        <img style="border:6px groove gold;"
                             src="/assets/css/img/restaurantPage/theCheesecakeFactory.png" width="250" height="200"
                             alt="CheeseFactory" class="RestaurantFrame">
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
                        <img style="border:6px groove gold;" src="/assets/css/img/restaurantPage/blueSushi.jpeg" width="250" height="200"
                             alt="Mayuri" class="RestaurantFrame">
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
                        <h4>${restaurants[1].name}</h4>
                        <div align="right">
                            category
                        </div>
                    </div>
                </div>
                <div class="col span-1-of-4 box">
                    <div class="RestaurantFrame">
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200" width="250" height="200"
                             alt="MoonSoon" class="RestaurantFrame">
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
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200" width="250" height="200"
                             alt="Kizuki" class="RestaurantFrame">
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
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200" width="250" height="200"
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
                        <img style="border:4px groove gold;" src="http://placehold.it/250x200" width="250" height="200"
                             alt="Mayuri" class="RestaurantFrame">
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
                        <img style="border:6px groove gold;" src="http://placehold.it/250x200" width="250" height="200"
                             alt="BurgerKing" class="RestaurantFrame">
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