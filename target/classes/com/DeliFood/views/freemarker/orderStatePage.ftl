<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/grid.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/orderStateStyle.css">
    <link rel="stylesheet" type="text/css" href="/assets/js/app.js">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:900&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ravi+Prakash" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans:700" rel="stylesheet">

    <meta charset="UTF-8">
    <title>OrderState</title>
</head>
<header>
    <nav>
        <div class="row" >
            <img src="resources/css/img/sign/deliSign.png" alt="DeliFood Logo" class="logo" >
            <a class="deliWord" href="index.html" >DeliFood </a>
        </div>
    </nav>
</header>
<body>

<section class="section-orderState-body">
    <div class="orderState-box">

        <h2> Check Your Order State </h2>
        <div class="customerInfo-box">
            <h3> Customer's Name </h3>

            <p class="Customer_address"> 11745 NE 8th St Bellevue, WA 98005</p>

            <p class="instruction-head"> Additional Instruction: </p>
            <p class="instruction-body"> call me when you arrive at the address, phone number: 4256478989 </p>

        </div>


        <div class="orderStateBar-box">
            <div id = deliverButton>
                <button onclick="move()"> Start Deliver </button>

            </div>
            <div id="myProgress">
                <div id="myBar">
                    <div id="label">10%</div>
                </div>

            </div>



            <script>
                function move() {
                    var elem = document.getElementById("myBar");
                    var width = 0;
                    var id = setInterval(frame, 10000);
                    function frame() {
                        if (width >= 100) {
                            clearInterval(id);
                        } else {
                            width+=10;
                            elem.style.width = width + '%';
                            document.getElementById("label").innerHTML = width * 1 + '%';
                        }
                    }
                }
            </script>


        </div>

        <p class="stateBar-Tag" align="right"> </p>
        <div class="row">
            <div class="col span-1-of-6 box">
                <h7>---------^---------</h7>

                <h7>Restaurant have received your order </h7>

            </div>

            <div class="col span-1-of-6 box">
            </div>
            <div class="col span-1-of-6 box">
                <h7>---------^-------</h7>
                <h7>Ready to Delivery</h7>

            </div>

            <div class="col span-1-of-6 box">
                <h7>-----------^-------</h7>
                <h7>Courier have taken your order</h7>

            </div>

            <div class="col span-1-of-6 box">
            </div>
            <div class="col span-1-of-6 box">
                <h7>--------------^---</h7>
                <h7>Your order have delivered</h7>

            </div>

        </div>

        <p class="delivery_time" align="right"> Estimated Delivery Time: 8:00 PM</p>


    </div>

    <div class="yourOrder-box">
        <p class="yourOrderHeader">
        <h2> Your Order </h2>
        </p>



        <table style="width:100%">
            <tr>
                <th>Item</th>
                <th>Qty</th>
                <th>Price</th>
            </tr>
            <tr>
                <td>Chicken Wings </td>
                <td>1</td>
                <td>$10.00</td>
            </tr>
            <tr>
                <td>Cheesse Burger</td>
                <td>2</td>
                <td>$24.00</td>
            </tr>
            <tr>
                <td>Onion RIngs</td>
                <td>1</td>
                <td>$5.00</td>
            </tr>
            <tr>
                <td>Crispy Chicken</td>
                <td>1</td>
                <td>$8.00</td>
            </tr>
        </table>


    </div>

</section>
</body>
</html>