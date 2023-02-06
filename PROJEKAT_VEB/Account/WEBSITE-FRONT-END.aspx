<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WEBSITE-FRONT-END.aspx.cs" Inherits="PROJEKAT_VEB.WEBSITE_FRONT_END" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Bojan Novakovic Portfolio</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>



    <style>
        * {
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: sans-serif;
        }

        /* NESTO STO MI TREBA NA VISE MESTA I UVEK GA KORISTIM */
        span {
            color: rgb(255, 0, 212);
            
        }

        .naslovi {
            font-weight: 600;
        }

        /* NAVIGACIONI BAR */
        #nav-bar {
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .navbar {
            background-image: linear-gradient(to right, #a517ba, #5f1782);
            padding: 0 !important;
            box-shadow: 0 4px 2px -2px rgba(0, 0, 0, .2) !important;

        }

        .navbar-brand img {
            height: 40px;
            padding-left: 30px;
            animation: introLoad1 4s forwards;
        }

        .navbar-nav li {
            padding: 0 10px;
            
        }

        .navbar-nav li a {
            color: #fff !important;
            font-weight: 600;
            float: right;
            text-align: left;
            animation: introLoad1 4s forwards;
            
        }

        .navbar-nav li a:hover{
            background-color: #a517ba !important;
            border-radius: 25px;
        }

        .fa-bars {
            color: #fff;
            font-size: 30px !important;
        }

        .navbar-toggler {
            outline: none !important;
        }

        .nav-link {
            color: #555 !important;
            font-weight: 600;
            font-size: 16px;
        }

        /* BANNER */
        #banner {
            background-image: linear-gradient(to right, #a517ba, #5f1782);
            color: #fff;
            padding-top: 5%;
            animation: introLoad 2s forwards;
            
        }
        

        .promo-title {
            font-size: 60px;
            font-weight: 600;
            margin-top: 100px;
            animation: introLoad1 3s forwards;

        }

        .img-fluid{
            animation: introLoad1 3s forwards;
        }

        #h4animation{
            animation: introLoad1 3s forwards;
        }

        #panimation{
            animation: introLoad1 3s forwards;
        }

        .play-btn {
            width: 45px;
            margin: 20px;
        }

        #banner a {
            color: #fff;
            text-decoration: none;
            
        }

        .bottom-img {
            width: 100%;
            
        }

        /* SERVICES */
        #services {
            padding: 80px 0;
            
        }

        .service-img {
            width: 100px;
            animation: introLoad1 2s forwards;
        }

        .services {
            padding: 20px;
        }

        .services h4 {
            padding: 5px;
            margin-top: 25px;
            text-transform: uppercase;
        }

        .title::before {
            content: '';
            background: #7b1798;
            height: 5px;
            width: 200px;
            margin-left: auto;
            margin-right: auto;
            display: block;
            transform: translateY(63px);
        }

        .title::after {
            content: '';
            background: #7b1798;
            height: 10px;
            width: 50px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 40px;
            display: block;
            transform: translateY(8px);
        }

        #services .btn-primary {
            box-shadow: none;
            padding: 8px 25px;
            border-radius: 20px;
            background: none;
            color: rgb(255, 255, 255);
            font-weight: 600;
            border: 2px solid #7b1798;
            outline: none;
            border-radius: 24px;
            transition: 0.5s;
        }

        #services .btn-primary:hover {
            background: #7b1798;
        }

        /* ABOUT ME */
        #about-us {
            background: #f8f9fa;
            padding-bottom: 50px;
            padding-top: 50px;

        }

        .about-title {
            font-size: 40px;
            font-weight: 600;
            margin-top: 8%;
        }

        #about-us ul li {
            margin: 10px 0;
        }

        #about-us ul {
            margin-left: 20px;
        }

        /* TESTIMONIALS */
        #testimonials {
            margin: 100px 0;

        }

        .footer-img {
            width: 100%;

        }

        /* SOCIAL MEDIA */
        #social-media {
            background: #f8f9fa;
            padding: 100px 0;
        }

        #social-media p {
            font-size: 36px;
            font-weight: 600;
            margin-bottom: 30px;
        }

        .social-icons img {
            width: 60px;
            transition: 0.5s;
        }

        .social-icons a:hover img {
            transform: translateY(-10px);
        }

        /*  FOOTER */

        #footer {
            background-image: linear-gradient(to right, #a517ba, #5f1782);
            color: #fff;
        }

        .footer-img {
            width: 100%;
        }

        .footer-box {
            padding: 20px;
        }

        .footer-box img {
            width: 120px;
            margin-bottom: 20px;
        }

        .footer-box .form-control {
            box-shadow: none !important;
            border: none;
            border: 0;
            margin-top: 25px;
            max-width: 250px;
        }

        .footer-box .btn-primary {
            box-shadow: none;
            border: none;
            border-radius: 0;
            margin-top: 30px;
            background-image: linear-gradient(to right, #a517ba, #5f1782);

        }

        hr {
            background-color: #fff;
        }

        .copyright {
            margin-bottom: 0;
            padding-bottom: 20px;
            text-align: center;
        }

        .gmap_canvas {
            overflow: hidden;
            background: none !important;
            height: 500px;
            width: 100%;
        }

        /* OVO JE OVO  STO SAM DANAS DODAO */
        /* OVO POSLEDNJE U JS STO PRAVIM REVEAL */
        .reveal {
            position: relative;
            transform: translateY(150px);
            opacity: 0;
            transition: all 1s ease;
        }


        .reveal.active {
            transform: translateY(0px);
            opacity: 1;
        }

        /* POSEBAN REVEAL ZA BANNER */
        /*.reveal1 {
            position: relative;
            transform: translateX(150px);
            opacity: 0;
            transition: all 1s ease;
        }

        .reveal1.active1 {
            transform: translateX(0px);
            opacity: 1;
        }*/

        /* ANIMACIJA HEADER... */
        @keyframes introLoad{
            from{
                clip-path: polygon(0 0, 100% 0, 100% 0,0 0);
            }
            to{
                clip-path: polygon(0 0, 100% 0, 100% 100%,0 100%);
            }
        }
        @keyframes introLoad1{
            from{
                clip-path: polygon(100% 0, 100% 0, 100% 100%, 100% 100%);
            }
            to{
                clip-path: polygon(100% 0, 0 0, 0 100%, 100% 100%);
            }
        }
    </style>



</head>
<body>
    
    <section id="nav-bar">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#"><img src="images/K-LOGO.png"/></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#banner">Pocetna</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Moji projekti</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about-us">O meni</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#testimonials">Odakle sam</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Tabele.aspx">Summary</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  href="Login.aspx">Log Out</a>
                         
                    </li>
                    
                    <li class="nav-item">
                       <asp:Label runat="server" ID="adminLink" Visible="false" > <a class="nav-link" href="../Admin/Admin.aspx"  visible="false">Admin</a></asp:Label>

                    </li>
                </ul>
            </div>
        </nav>

    </section>


    <!-- BANNER -->
    <section id="banner">
        <div class="container reveal1">
            <div class="row">
                <div class="col-md-6">
                    <p class="promo-title"><span>B</span>ojan <span>N</span>ovakovic</p>
                    <h4 id="h4animation"><span>O</span> Meni</h4>
                    <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;" id="panimation">Moje ime je Bojan Novakovic. Dolazim iz Nove Pazove
                        koja je nedaleko od Beograda. Imam 18 godina. Idem u srednju skolu - "Elektrotehnicka
                        Skola Zemun" u Zemunu. U skoli ucim o: C# , HTML, CSS, JS, SQL. Ovo je moj projekat...
                        
                    </p>

                </div>
                <div class="col-md-6">
                    <img src="images/slika1.png" class="img-fluid"/>
                </div>
            </div>
        </div>

        <img src="images/wave1.png" class="bottom-img"/>
    </section>

    <!--SERVICES-->
    <section id="services">

        <div class="container text-center reveal">
            <h1 class="title naslovi">MOJI PROJEKTI</h1>
            <div class="row text-center">
                <div class="col-md-4 services">
                    <img src="images/BAZE.png" class="service-img"/>
                    <h4>PROGRAMIRNAJE</h4>
                    <p>SLIKA AKO IKAD BUDE BILO</p>
                </div>
                <div class="col-md-4 services">
                    <img src="images/JS.png" class="service-img"/>
                    <h4>VEB PROGRAMIRANJE</h4>
                    <p>SLIKA AKO IKAD BUDE BILO</p>
                </div>
                <div class="col-md-4 services">
                    <img src="images/PROG.png" class="service-img"/>
                    <h4>BAZE PODATAKA</h4>
                    <p>SLIKA AKO IKAD BUDE BILO</p>
                </div>
            </div>
            <button type="button" class="btn btn-primary dugme" onclick="dugme1()">KONTAKT</button>
        </div>
    </section>
    <!-- ABOUT ME -->
    <section id="about-us">
        <div class="container reveal">
            <h1 class="title text-center naslovi">SPOSOBNOSTI</h1>
            <div class="row">
                <div class="col-md-6 about-us">
                    <p class="about-title">Umem da radim:</p>
                    <ul>
                        <li>C#</li>
                        <li>VS-CODE</li>
                        <li>NOTEPAD++</li>
                        <li>DEV-CPP</li>
                        <li>SQL SERVER</li>
                        <li>TEAM-u</li>
                    </ul>
                </div>

                <div class="col-md-6">
                    <img src="images/network.png"/>
                </div>
            </div>
        </div>
    </section>
    <!-- TESTIMONIALS -->
    <section id="testimonials">
        <div class="container reveal">
            <h1 class="title text-center naslovi">ODAKLE SAM</h1>
            <div class="">
                <div class="">
                    <div class="mapouter">
                        <div class="gmap_canvas"><iframe width="100%" height="550" id="gmap_canvas"
                                src="https://maps.google.com/maps?q=Nova%20Pazova&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a
                                href="https://123movies-to.org"></a><br/>
                            <a href="https://www.embedgooglemap.net">adding google maps to website</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- SOCIAL MEDIA -->
    <section id="social-media">
        <div class="container reveal text-center">
            <p>DRUSTVENE MREZE</p>
            <div class="social-icons">
                <a href="https://www.facebook.com" target="__blank"><img src="images/facebook-icon.png" alt=""/></a>
                <a href="https://www.instagram.com/" target="__blank"><img src="images/instagram-icon.png" alt=""/></a>
                <a  onclick="dugme3()"><img src="images/whatsapp-icon.png" alt=""/></a>
                <a  onclick="dugme2()"><img src="images/snapchat-icon.png" alt=""/></a>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <section id="footer">
        <img src="images/wave2.png" class="footer-img"/>
        <div class="container">
            <div class="row">
                <div class="col-md-4 footer-box">
                    <img src="images/K-LOGO.png"/>
                </div>
                <div class="col-md-4 footer-box">
                    <p><b>Kontaktirajte me:</b></p>
                    <p>Bojan Novakovic</p>
                    <p>+381/69-328-33-34</p>
                    <p>novakovic.bojan@yahoo.com</p>
                </div>

                <div class="col-md-4 footer-box">
                    <p><b>SUBSCRIBE</b></p>
                    <input type="email" class="form-control" placeholder="example@mail.com"/>
                    <button type="button" class="btn btn-primary">SUBSCRIBE</button>
                </div>
            </div>
            <hr/>
            <p class="copyright">WEBSITE MADE BY KIBOLEZA 2022(R)</p>
        </div>
    </section>
    <script>
        function dugme1() {
            alert('+38169328334 BTW ovde treba da stoji da se skine moj portfolio koji nemam :/');
        }
        window.addEventListener('scroll', reveal);
        /* OVO JE OVO  STO SAM DANAS DODAO  KAO I KLASE REVEAL I REVEAL1 NA SVAKI GLAVNI DIV SA KLASOM CONTAINER*/
        function reveal() {
            var reveals = document.querySelectorAll('.reveal');
            for (let i = 0; i < reveals.length; i++) {
                var windowheight = window.innerHeight;
                var revealTop = reveals[i].getBoundingClientRect().top;
                var revealPoint = 150;

                if (revealTop < windowheight - revealPoint) {
                    reveals[i].classList.add('active');
                }
                else {
                    reveals[i].classList.remove('active');
                }
            }
        }
        window.addEventListener('scroll', reveal1);
        function reveal1() {
            var reveals = document.querySelectorAll('.reveal1');
            for (let i = 0; i < reveals.length; i++) {
                var windowheight = window.innerHeight;
                var revealTop = reveals[i].getBoundingClientRect().top;
                var revealPoint = 150;

                if (revealTop < windowheight - revealPoint) {
                    reveals[i].classList.add('active1');
                }
                else {
                    reveals[i].classList.remove('active1');
                }
            }
        }

        function dugme2() {
            alert('K1B03');
        }

        function dugme3() {
            alert('+38169328334');
        }
    </script>



</body>
</html>

