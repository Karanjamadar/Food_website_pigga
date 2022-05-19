<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String user = (String)session.getAttribute("userId");
if (user==null){
    response.sendRedirect("sign_in/login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with Pigga landing page.">
    <meta name="author" content="Devcrud">
    <title>Pigga</title>
    <!-- font icons -->
    <link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">
    <!-- Bootstrap + Pigga main styles -->
    <link rel="stylesheet" href="assets/css/pigga.css">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

<!-- First Navigation -->
<nav class="navbar nav-first navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="assets/imgs/navbar-brand.svg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
            <p>Welcome <%=request.getParameter("user_mail")%></p>
        </a>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link text-primary" href="#home">CALL US : <span class="pl-2 text-muted">(123) 456 7890</span></a>
            </li>
        </ul>
    </div>
</nav>
<!-- End of First Navigation -->
<!-- Second Navigation -->
<nav class="nav-second navbar custom-navbar navbar-expand-sm navbar-dark bg-dark sticky-top">
    <div class="container">
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#about">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#service">Our Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#team">Our Team</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#testmonial">Testmonials</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="components.html" class="btn btn-primary btn-sm">Sign Out</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- End Of Second Navigation -->
<!-- Page Header -->
<header class="header">
    <div class="overlay">
        <img src="assets/imgs/logo.svg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page" class="logo">
        <h1 class="subtitle">Welcome To Our Restaurant</h1>
        <h1 class="title">Really Fresh &amp; Tasty</h1>
        <a class="btn btn-primary mt-3" href="#book-table">Order Now</a>
    </div>
</header>
<!-- End Of Page Header -->
<!-- About Section -->
<section id="about">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h6 class="section-subtitle">Opening Times</h6>
                <h3 class="section-title">Working Times</h3>
                <p class="mb-1 font-weight-bold">Monday - Thursday : <span class="font-weight-normal pl-2 text-muted">7:00 am - 12:00 pm</span></p>
                <p class="mb-1 font-weight-bold">Friday - Saturday : <span class="font-weight-normal pl-2 text-muted">7:00 am - Midnight</span></p>
                <p class="mb-1 font-weight-bold">Saturday - Sunday : <span class="font-weight-normal pl-2 text-muted">9:00 am - 12:00 pm</span></p>

                <a href="#book-table" class="btn btn-primary btn-sm w-md mt-4">Book a table</a>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col">
                        <img alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page" src="assets/imgs/about-1.jpg" class="w-100 rounded shadow">
                    </div>
                    <div class="col">
                        <img alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page" src="assets/imgs/about-2.jpg" class="w-100 rounded shadow">
                    </div>
                </div>
            </div>
        </div>
        <div class="section-devider my-6 transparent"></div>
        <div class="row align-items-center">
            <div class="col-md-6">
                <h6 class="section-subtitle">The Great Story</h6>
                <h3 class="section-title">Our Culinary Journey</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic illo a, aut, eum nesciunt obcaecati deserunt ipsam nostrum voluptate recusandae?</p>
            </div>
            <div class="col-md-6 order-1 order-sm-first">
                <div class="row">
                    <div class="col">
                        <img alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page" src="assets/imgs/about-3.jpg" class="w-100 rounded shadow">
                    </div>
                    <div class="col">
                        <img alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page" src="assets/imgs/about-4.jpg" class="w-100 rounded shadow">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End OF About Section -->

<!-- Service Section -->
<section id="service" class="pattern-style-4 has-overlay">
    <div class="container raise-2">
        <h6 class="section-subtitle text-center">Featured Food</h6>
        <h3 class="section-title mb-6 pb-3 text-center">Special Dishes</h3>
        <div class="row">
            <div class="col-md-6 mb-4">
                <a href="javascrip:void(0)" class="custom-list">
                    <div class="img-holder">
                        <img src="assets/imgs/dish-1.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    </div>
                    <div class="info">
                        <div class="head clearfix">
                            <h5 class="title float-left">Chicken Makhani (Butter Chicken)</h5>
                            <p class="float-right text-primary">250&#x20B9</p><br>
                            <form method="get" action="">
                                <input type="button" class="btn btn-primary btn-sm" name="aper" value="Add to Cart">
                            </form>
                        </div>
                        <div class="body">
                            <p>Butter chicken is mouth-watering, tender chicken, cooked in a spiced tomato sauce.</p>
                        </div>

                    </div>
                </a>
            </div>
            <div class="col-md-6 mb-4">
                <a href="javascrip:void(0)" class="custom-list">
                    <div class="img-holder">
                        <img src="assets/imgs/dish-2.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    </div>
                    <div class="info">
                        <div class="head clearfix">
                            <h5 class="title float-left">Samosa</h5>
                            <p class="float-right text-primary">30&#x20B9</p><br>
                            <form method="get" action="">
                                <input type="button" class="btn btn-primary btn-sm" name="aper" value="Add to Cart">
                            </form>
                        </div>
                        <div class="body">
                            <p>Samosas are a very popular traditional Indian Dish. Probably because samosas are a tasty, fried, or baked pastry with savory fillings.</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-6 mb-4">
                <a href="javascrip:void(0)" class="custom-list">
                    <div class="img-holder">
                        <img src="assets/imgs/dish-3.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    </div>
                    <div class="info">
                        <div class="head clearfix">
                            <h5 class="title float-left">Aloo Gobi (Potato and Cauliflower)</h5>
                            <p class="float-right text-primary">70&#x20B9</p><br>
                            <form method="get" action="">
                                <input type="button" class="btn btn-primary btn-sm" name="aper" value="Add to Cart">
                            </form>
                        </div>
                        <div class="body">
                            <p>Aloo Gobi is a dry, vegan Indian dish, made with potatoes (aloo), cauliflower (gobi), and Indian spices.</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-6 mb-4">
                <a href="javascrip:void(0)" class="custom-list">
                    <div class="img-holder">
                        <img src="assets/imgs/dish-4.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    </div>
                    <div class="info">
                        <div class="head clearfix">
                            <h5 class="title float-left">Naan (Flatbread)</h5>
                            <p class="float-right text-primary">70&#x20B9</p><br>
                            <form method="get" action="">
                                <input type="button" class="btn btn-primary btn-sm" name="aper" value="Add to Cart">
                            </form>
                        </div>
                        <div class="body">
                            <p>If you’ve never experienced good naan bread, your life has been much less delicious than it could be.</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-6 mb-4">
                <a href="javascrip:void(0)" class="custom-list">
                    <div class="img-holder">
                        <img src="assets/imgs/dish-5.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    </div>
                    <div class="info">
                        <div class="head clearfix">
                            <h5 class="title float-left">Matar Paneer</h5>
                            <p class="float-right text-primary">150&#x20B9</p><br>
                            <form method="get" action="">
                                <input type="button" class="btn btn-primary btn-sm" name="aper" value="Add to Cart">
                            </form>
                        </div>
                        <div class="body">
                            <p>Matar paneer comes from regions of northern India. It’s made up of a yummy tomato sauce over paneer (farmer’s cheese) and peas, and spiced with garam masala.</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-6 mb-4">
                <a href="javascrip:void(0)" class="custom-list">
                    <div class="img-holder">
                        <img src="assets/imgs/dish-6.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    </div>
                    <div class="info">
                        <div class="head clearfix">
                            <h5 class="title float-left">Rogan Josh (Curried Meat)</h5>
                            <p class="float-right text-primary">350&#x20B9</p><br>
                            <form method="get" action="">
                                <input type="button" class="btn btn-primary btn-sm" name="aper" value="Add to Cart">
                            </form>
                        </div>
                        <div class="body">
                            <p>Rogan josh is a staple of Kashmiri (region in northern India) cuisine. It’s one of the main dishes of a Wazwan: a Kashmiri multi-course meal.</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- End of Featured Food Section -->

<!-- Menu Section -->
<section class="has-img-bg">
    <div class="container">
        <h6 class="section-subtitle text-center">Great Food</h6>
        <h3 class="section-title mb-6 text-center">Main Menu</h3>
        <div class="card bg-light">
            <div class="card-body px-4 pb-4 text-center">
                <div class="row text-left">
                    <div class="col-md-6 my-4">
                        <a href="#" class="pb-3 mx-3 d-block text-dark text-decoration-none border border-left-0 border-top-0 border-right-0">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    Tandoori Chicken
                                    <p class="mt-1 mb-0">Tandoori chicken is a popular North Indian dish consisting of roasted chicken prepared with yogurt and spices.</p>
                                </div>
                                <h6 class="float-right text-primary">240&#x20B9</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 my-4">
                        <a href="#" class="pb-3 mx-3 d-block text-dark text-decoration-none border border-left-0 border-top-0 border-right-0">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    Chana Aloo Curry
                                    <p class="mt-1 mb-0">A sultry blend of ginger, tomato, curry, and garlic marinate potatoes, chickpeas, and onions.</p>
                                </div>
                                <h6 class="float-right text-primary">170&#x20B9</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 my-4">
                        <a href="#" class="pb-3 mx-3 d-block text-dark text-decoration-none border border-left-0 border-top-0 border-right-0">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    Shu’Bah’ (Tomato Soup)
                                    <p class="mt-1 mb-0">Shu’Bah’, sometimes referred to as “Shorba”, is a light, Indian-spiced tomato soup.</p>
                                </div>
                                <h6 class="float-right text-primary">85&#x20B9</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 my-4">
                        <a href="#" class="pb-3 mx-3 d-block text-dark text-decoration-none border border-left-0 border-top-0 border-right-0">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    Chutney (Fruit Sauce)
                                    <p class="mt-2 mb-0">sauce that is a flavorful sweet pair to savory samosas.</p>
                                </div>
                                <h6 class="float-right text-primary">$17</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 my-4">
                        <a href="#" class="pb-3 mx-3 d-block text-dark text-decoration-none border border-left-0 border-top-0 border-right-0">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    Saag Paneer
                                    <p class="mt-2 mb-0">Saag is simply the Hindi name for leafy green vegetables.</p>
                                </div>
                                <h6 class="float-right text-primary">210&#x20B9</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 my-4">
                        <a href="#" class="pb-3 mx-3 d-block text-dark text-decoration-none border border-left-0 border-top-0 border-right-0">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    Korma
                                    <p class="mt-2 mb-0">Korma is a preparation where protein is cooked with a yogurt-based sauce flavored with ginger and garlic.</p>
                                </div>
                                <h6 class="float-right text-primary">100&#x20B9</h6>
                            </div>
                        </a>
                    </div>
                </div>
                <a href="#book-table" class="btn btn-primary mt-4">Go to Cart</a>
            </div>
        </div>
    </div>
</section>
<!-- End of Menu Section -->

<!-- Team Section -->
<section id="team">
    <div class="container">
        <h6 class="section-subtitle text-center">Great Team</h6>
        <h3 class="section-title mb-5 text-center">Talented Chefs</h3>
        <div class="row">
            <div class="col-md-4 my-3">
                <div class="team-wrapper text-center">
                    <img src="assets/imgs/karan.jpeg" class="circle-120 rounded-circle mb-3 shadow" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    <h5 class="my-3">Karan Jamadar</h5>
                    <p>Intelligent Chef of Pigga! Makes customer obsess with their skills.</p>
                    <h6 class="socials mt-3">
                        <a href="https://www.facebook.com/karanjamadar02" class="px-2" target="_blank"><i class="ti-facebook"></i></a>

                        <a href="https://instagram.com/_.karan._05_?igshid=YmMyMTA2M2Y=" class="px-2" target="_blank"><i class="ti-instagram"></i></a>

                    </h6>
                </div>
            </div>
            <div class="col-md-4 my-3">
                <div class="team-wrapper text-center">
                    <img src="assets/imgs/rohan.jpg" class="circle-120 rounded-circle mb-3 shadow" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    <h5 class="my-3">Rohan Gaikwad</h5>
                    <p>Very great chef of Pigga! Indian food should be made by him!</p>
                    <h6 class="socials mt-3">
                        <a href="https://www.facebook.com/profile.php?id=100022563668453" class="px-2" target="_blank"><i class="ti-facebook"></i></a>
                        <a href="https://instagram.com/rohan_gaikwad_1718?igshid=YmMyMTA2M2Y=" class="px-2" target="_blank"><i class="ti-instagram"></i></a>
                    </h6>
                </div>
            </div>
            <div class="col-md-4 my-3">
                <div class="team-wrapper text-center">
                    <img src="assets/imgs/chef3.jpg" class="circle-120 rounded-circle mb-3 shadow" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                    <h5 class="my-3">Sanjeev Kapoor</h5>
                    <p>anjeev Kapoor is known as the ‘Best Chef of India’. This award is given him by the Government of India.</p>
                    <h6 class="socials mt-3">
                        <a href="https://www.facebook.com/ChefSanjeevKapoor" class="px-2" target="_blank"><i class="ti-facebook"></i></a>
                        <a href="https://instagram.com/sanjeevkapoor?igshid=YmMyMTA2M2Y=" class="px-2" target="_blank"><i class="ti-instagram"></i></a>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of Team Section -->

<!-- Testmonial Section -->
<section id="testmonial" class="pattern-style-3">
    <div class="container">
        <h6 class="section-subtitle text-center">Best Clients</h6>
        <h3 class="section-title mb-5 text-center">Testmonials</h3>

        <div class="row">
            <div class="col-md-4 my-3 my-md-0">
                <div class="card">
                    <div class="card-body">
                        <div class="media align-items-center mb-3">
                            <img class="mr-3" src="assets/imgs/avatar.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                            <div class="media-body">
                                <h6 class="mt-1 mb-0">John Doe</h6>
                                <small class="text-muted mb-0">Business Analyst</small>
                            </div>
                        </div>
                        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus enim modi, id dicta reiciendis itaque.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 my-3 my-md-0">
                <div class="card">
                    <div class="card-body">
                        <div class="media align-items-center mb-3">
                            <img class="mr-3" src="assets/imgs/avatar-1.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                            <div class="media-body">
                                <h6 class="mt-1 mb-0">Maria Garcia</h6>
                                <small class="text-muted mb-0">Insurance Agent</small>
                            </div>
                        </div>
                        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus enim modi, id dicta reiciendis itaque.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 my-3 my-md-0">
                <div class="card">
                    <div class="card-body">
                        <div class="media align-items-center mb-3">
                            <img class="mr-3" src="assets/imgs/avatar-2.jpg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page">
                            <div class="media-body">
                                <h6 class="mt-1 mb-0">Mason Miller</h6>
                                <small class="text-muted mb-0">Residential Appraiser</small>
                            </div>
                        </div>
                        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus enim modi, id dicta reiciendis itaque.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of Testmonial Section -->




<!-- Prefooter Section  -->
<div class="py-4 border border-lighter border-bottom-0 border-left-0 border-right-0 bg-dark">
    <div class="container">
        <div class="row justify-content-between align-items-center text-center">
            <div class="col-md-3 text-md-left mb-3 mb-md-0">
                <img src="assets/imgs/navbar-brand.svg" width="100" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Pigga Landing page" class="mb-0">
            </div>
            <div class="col-md-9 text-md-right">
                <a href="#" class="px-3"><small class="font-weight-bold">Our Company</small></a>
                <a href="#" class="px-3"><small class="font-weight-bold">Our Location</small></a>
                <a href="#" class="px-3"><small class="font-weight-bold">Help Center</small></a>
                <a href="components.html" class="pl-3"><small class="font-weight-bold">Components</small></a>
            </div>
        </div>
    </div>
</div>
<!-- End of PreFooter Section -->

<!-- Page Footer -->
<footer class="border border-dark border-left-0 border-right-0 border-bottom-0 p-4 bg-dark">
    <div class="container">
        <div class="row align-items-center text-center text-md-left">
            <div class="col">
                <p class="mb-0 small">&copy; <script>document.write(new Date().getFullYear())</script>, <a href="https://www.devcrud.com" target="_blank">DevCrud</a>  All rights reserved </p>
            </div>
            <div class="d-none d-md-block">
                <h6 class="small mb-0">
                    <a href="javascript:void(0)" class="px-2"><i class="ti-facebook"></i></a>
                    <a href="javascript:void(0)" class="px-2"><i class="ti-twitter"></i></a>
                    <a href="javascript:void(0)" class="px-2"><i class="ti-instagram"></i></a>
                    <a href="javascript:void(0)" class="px-2"><i class="ti-google"></i></a>
                </h6>
            </div>
        </div>
    </div>

</footer>
<!-- End of Page Footer -->

<!-- core  -->
<script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
<script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

<!-- bootstrap affix -->
<script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

<!-- Pigga js -->
<script src="assets/js/pigga.js"></script>

</body>
</html>
