<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/Grid.css">
    <link rel="stylesheet" type="text/css" href="/assets//css/menuStyle.css">
    <link rel="stylesheet" type="text/css" href="/assets//js/app.js">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:900&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

    <title>Checkout</title>
</head>

<header>
    <nav>
        <div class="row">
            <img src="/assets//css/img/sign/deliLogo.png" alt="DeliFood Logo" class="logo">
            <a class="deliWord">DeliFood </a>
        </div>
    </nav>
</header>

<body
        ng-app="deliApp"
        ng-controller="mainCtrl">
<div style="margin: 5% 10%;">
    <div class="checkoutpage">
        <div class="customerinfo">
            <h2>Info</h2>
            <div>Name <input type="text"></div>
            <div class="delieryAddress">Delivery Address<br>
                <input type="text" size="40px"><br></div>
            <div>Sate <input type="text" size="5px">&nbsp;&nbsp;&nbsp;&nbsp;Zip Code <input type="text" size="8px"><br></div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;House&nbsp;&nbsp;<input type="radio"
                                                                                    name="houseType" >&nbsp;
            &nbsp;&nbsp;&nbsp;
            Apt&nbsp;&nbsp;<input type="radio" name="houseType">
            <div class="commentSpace">
                <textarea name="comment" id='comment' placeholder="Addition instruction for delivery"></textarea><br/>
            </div>
        </div>
        <h2>Schedule</h2>
        <div class="scheduleTime">
            <div class="row">
                <div class="col span-1-of-2 box">
                    <input type="radio" name="scheduleType">&nbsp;&nbsp;&nbsp;ASAP
                </div>
                <div class="col span-1-of-2 box">
                    <input type="radio" name="scheduleType">
                    <label>&nbsp;&nbsp;&nbsp;Schedule Time
                        <select id="restaurantChoice">
                            <option value="0">10:00am</option>
                            <option value="1">10:30am</option>
                            <option value="2">11:00am</option>
                            <option value="3">11:30am</option>
                            <option value="4">12:00am</option>
                            <option value="5">1:00pm</option>
                            <option value="6">1:30pm</option>
                            <option value="7">2:00pm</option>
                            <option value="8">2:30pm</option>
                            <option value="9">3:00pm</option>
                            <option value="10">3:30pm</option>
                            <option value="11">4:00pm</option>
                            <option value="12">4:30pm</option>
                            <option value="12">5:00pm</option>
                            <option value="13">5:30pm</option>
                            <option value="14">6:00pm</option>
                            <option value="15">6:30pm</option>
                            <option value="16">7:00pm</option>
                            <option value="17">7:30pm</option>
                            <option value="18">8:00pm</option>
                            <option value="19">8:30pm</option>
                            <option value="20">9:00pm</option>
                            <option value="21">9:30pm</option>
                            <option value="22">10:00pm</option>
                        </select>
                    </label>
                </div>
            </div>
        </div>
        <div class="paymentMethod">
            <h2>Payment</h2>
            <div class="row">
                <div class="col span-1-of-2 box">
                    <img src="/assets//css/img/sign/paypal_icon.png" alt="paypal">
                </div>
                <div class="col span-1-of-2 box">
                    <img src="/assets//css/img/sign/visa-checkout.png" alt="paypal">
                </div>
            </div>
            <div class="row">
                <div class="col span-1-of-2 box">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="paymentType">
                </div>
                <div class="col span-1-of-2 box">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="paymentType">
                </div>
            </div>
        </div>
        <div class="coupon">
            <h2>Coupon</h2>
            <input type="text" size="40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>Apply</button>
        </div>
    </div>

    <div class="orderSummar_Checkout">
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
                    <p>1</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p>$5.00</p>
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
                    <p>Tips</p>
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
            <button>Place Order</button>
        </div>
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