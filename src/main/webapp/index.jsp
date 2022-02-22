
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://bootswatch.com/5/vapor/bootstrap.min.css" rel="stylesheet" type="text/css">

    <style>
        .sizeImage{
            width: 310px;
            height: 400px;
        }

            h1 {text-align: center;}
            h2 {text-align: center;}

         .filterDiv {
             line-height: 100px;
             text-align: center;
             display: none;
         }

        .show {
            display: block;
        }

        .row::after {
            content: "";
            clear: both;
            display: table;
        }

        .col{
            float: left;
            width: 20%;
        }

        /* Style the buttons */
        .btn {

            height: 75px;
            width: 135px;
            border: none;
            outline: none;
            cursor: pointer;

        }

        .btn:hover {

        }

        .btn.active {

        }
            .center {
                text-align: center;

            }

            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }


            .topnav a:hover {
                background-color: aqua;
                color: black;
            }

            .topnav a.active {
                background-color: gold;
                color: white;
            }


    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="topnav">
        <div class="collapse navbar-collapse" id="navbarColor03">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Champions
                        <span class="visually-hidden">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="term.jsp">Terminology</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="farming.jsp">Farming</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
            </ul>
        </div>
    </div>
    </div>
</nav>

<h1>League for Dummies</h1>



<div id="myBtnContainer" class="center">
    <button class="btn-outline-primary " onclick="filterSelection('all')"> Show all</button>
    <button class="btn-outline-primary" onclick="filterSelection('Top')">Top Laners</button>
    <button class="btn-outline-primary" onclick="filterSelection('Jungle')">Junglers</button>
    <button class="btn-outline-primary" onclick="filterSelection('Mid')">Middle Laners</button>
    <button class="btn-outline-primary" onclick="filterSelection('ADC')">Bottom Laners</button>
    <button class="btn-outline-primary" onclick="filterSelection('Sup')">Supports</button>
</div>

        <div class="row">
            <div class="col">
                <div class="filterDiv Sup">
                    <a href="blitz.jsp">
                        <img src="images/blitz.png" class="sizeImage">
                    </a>
                </div>
            </div>

            <div class="col">
                <div class="filterDiv Mid">
                    <a href="corki.jsp">
                        <img src="images/corki.png" class="sizeImage">
                    </a>
                </div>
            </div>

            <div class="col">
                <div class="filterDiv ADC">
                    <a href="draven.jsp">
                        <img src="images/draven.png" class="sizeImage">
                    </a>
                </div>
            </div>

            <div class="col">
        <div class="filterDiv Jungle">
                <a href="kayn.jsp">
                    <img src="images/kayn.jpg" class="sizeImage">
                </a>
        </div>
            </div>

            <div class="col">
        <div class="filterDiv Mid">
                <a href="Galio.jsp">
                    <img src="images/Galio.png" class="sizeImage">
                </a>
        </div>
            </div>

            <div class="col">
                <div class="filterDiv ADC">
                    <a href="jinx.jsp">
                        <img src="images/jinx.png" class="sizeImage">
                    </a>
                </div>
            </div>



            <div class="col">
            <div class="filterDiv Jungle">
                <a href="masteryi.jsp">
                    <img src="images/yi.png" class="sizeImage">
                </a>
            </div>
            </div>

            <div class="col">
                <div class="filterDiv Top">
                    <a href="mord.jsp">
                        <img src="images/mord.png" class="sizeImage">
                    </a>
                </div>
            </div>


            <div class="col">
            <div class="filterDiv Sup">
                <a href="morgana.jsp">
                    <img src="images/morgana.png" class="sizeImage">
                </a>
            </div>
            </div>

            <div class="col">
            <div class="filterDiv Top">
                <a href="ornn.jsp">
                    <img src="images/ornn.png" class="sizeImage">
                </a>
            </div>
            </div>

            <div class="col">
            <div class="filterDiv Top">
                <a href="sett.jsp">
                    <img src="images/sett.png" class="sizeImage">
                </a>
            </div>
            </div>

            <div class="col">
                <div class="filterDiv Jungle">
                    <a href="shaco.jsp">
                        <img src="images/shaco.png" class="sizeImage">
                    </a>
                </div>
            </div>

            <div class="col">
                <div class="filterDiv Mid">
                    <a href="vex.jsp">
                        <img src="images/vex.png" class="sizeImage">
                    </a>
                </div>
            </div>

            <div class="col">
                <div class="filterDiv Sup">
                    <a href="yummi.jsp">
                        <img src="images/yummi.png" class="sizeImage">
                    </a>
                </div>
            </div>


            <div class="col">
            <div class="filterDiv ADC">
                <a href="xayah.jsp">
                    <img src="images/xayah.png" class="sizeImage">
                </a>
            </div>
            </div>

        </div>




<script>
    filterSelection("all")
    function filterSelection(c) {
        var x, i;
        x = document.getElementsByClassName("filterDiv");
        if (c == "all") c = "";
        // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
        for (i = 0; i < x.length; i++) {
            w3RemoveClass(x[i], "show");
            if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
        }
    }

    // Show filtered elements
    function w3AddClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            if (arr1.indexOf(arr2[i]) == -1) {
                element.className += " " + arr2[i];
            }
        }
    }

    // Hide elements that are not selected
    function w3RemoveClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            while (arr1.indexOf(arr2[i]) > -1) {
                arr1.splice(arr1.indexOf(arr2[i]), 1);
            }
        }
        element.className = arr1.join(" ");
    }

    // Add active class to the current control button (highlight it)
    var btnContainer = document.getElementById("myBtnContainer");
    var btns = btnContainer.getElementsByClassName("btn");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function() {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
        });
    }
</script>

</body>
</html>