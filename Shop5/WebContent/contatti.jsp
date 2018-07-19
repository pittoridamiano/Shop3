<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contattaci</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

</head>


<nav class="navbar navbar-inverse">
<br>
  <div class="container-fluid">
    <div class="navbar-header">
 
      <a class="navbar-brand" href="#">POVERON</a>
    </div>
    <ul class="nav navbar-nav">
     <li><a href="index.jsp" class="navbar-brand">Home</a></li>
			<li><a href="login.jsp" class="navbar-brand">Login</a></li>
			<li><a href="registrati.jsp" class="navbar-brand">Registrati</a></li>
			<li><a href="carrello.jsp" class="navbar-brand">Carrello</a></li>
    </ul>
    
    
       
    
    
    
    
    
    
    
    

<!-- SEARCH BAR -->
<div class="container">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Cerca per categoria</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#contains">Abbigliamento</a></li>
                      <li><a href="#its_equal">Alimentari</a></li>
                      <li><a href="#less_than">Animali</a></li>
                      <li><a href="#greather_than">Bellezza</a></li>
                      <li><a href="#less_than">Casa</a></li>
                      <li><a href="#less_than">Elettronica</a></li>
                      <li><a href="#less_than">Giardino</a></li>
                      <li><a href="#less_than">Giochi</a></li>
                      <li><a href="#less_than">Libri</a></li>
                      <li><a href="#less_than">Musica</a></li>
               
                      <li><a href="#less_than">Sport</a></li>
                     
                    </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Scrivi parola chiave..">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
	</div>
</div>


 <ul class="nav navbar-nav navbar-right">
      <li><a href="account.jsp">Il mio Account</a></li>
      <li><a href="carrello.jsp"></span> Carrello</a></li>
<li><a href="contatti.jsp" class="navbar-brand">Contatti</a></li>
      <li><a href="spedizione.jsp"></span>Metodi di Spedizioni</a></li>

</ul>
</div>
</nav>


<body>

	<div class="page-header text-center">
		<h1>Ti senti particolarmente povero? Vuoi condividere
			un'esperienza di poveranza?</h1>
		<h1>Contattaci</h1>
		<div class="item">
					<img src="img/noi.jpg">
				</div>
	</div>

	<div class="text-center">
		<h2>Poveron s.r.l</h2>

		<p>
			Via Salita dei Poveri<br>
		<p>53040 Serre di Rapolano SI</p>
		<p>09968473839</p>
		<p>info@poveron.it</p>

		<p>P.IVA. 01558989874</p>

		<div class="google-maps">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2905.7094525921543!2d11.615969915917036!3d43.257510779136815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132bdeb5139cc053%3A0x5a8b1d0ece57ad0c!2sVia+Salita+dei+Poveri%2C+53040+Serre+di+Rapolano+SI!5e0!3m2!1sit!2sit!4v1531406915136"
				width="600" height="450" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
		</div>
	</div>

	<div class="text-center">
		<h2>Informazioni Sulle Spedizioni</h2>

		<h3>Modalità</h3>
		<h3>Tempistiche</h3>

	</div>
</body>

<!-- Footer -->
<footer class="page-footer font-small lighten-3 pt-4" style="background-color: #ced4ea ">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">

      <!-- Grid row -->
      <div class="row">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">

          <!-- Content -->
          <h5 class="font-weight-bold text-uppercase mb-4">
          <table>
			<tr>
			<td><p><a href="index.jsp">Home</a></p></td>
			<td>
			<br>
			<td><p><a href="login.jsp">Login</a></p></td>
			<td><p><a href="registrati.jsp">Registrati</a></p><td>
			<td><p><a href="carrello.jsp">Carrello</a></p><td>
			<td> <div class="container">
    			<div class="row">    
        		<div class="col-xs-8 col-xs-offset-2">
		    	<div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Filter by</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#contains">Contains</a></li>
                      <li><a href="#its_equal">It's equal</a></li>
                      <li><a href="#greather_than">Greather than ></a></li>
                      <li><a href="#less_than">Less than < </a></li>
                      <li class="divider"></li>
                      <li><a href="#all">Anything</a></li>
                    </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Cerca il mongolino d'oro...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        		</div>
				</div>
				</div><p>
			</td>
			</table>

        </div>
        <!-- Grid column -->

        <hr class="clearfix w-100 d-md-none">
        

        <hr class="clearfix w-100 d-md-none">

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">

          <!-- Contact details -->
          <h5 class="font-weight-bold text-uppercase mb-4"></h5>

          <ul class="list-unstyled">
            <li>
              <p>
                <i class="fa fa-home mr-3"></i> Via Salita dei Poveri 53040 Serre di Rapolano SI</p>
            </li>
            <li>
              <p>
                <i class="fa fa-envelope mr-3"></i> info@poveron.it</p>
            </li>
            <li>
              <p>
                <i class="fa fa-phone mr-3"></i>09968473839</p>
            </li>
            <li>
              <p>
                <i class="fa fa-print mr-3"></i>P.IVA. 01558989874</p>
            </li>
          </ul>

        </div>
        <!-- Grid column -->

        <hr class="clearfix w-100 d-md-none">

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 text-center mx-auto my-4">

          <!-- Social buttons -->
          <h5 class="font-weight-bold text-uppercase mb-4">Seguici</h5>

          <!-- Facebook -->
          <a type="button" class="btn-floating btn-fb">
            <i class="fa fa-facebook"></i>
          </a>
          <!-- Twitter -->
          <a type="button" class="btn-floating btn-tw">
            <i class="fa fa-twitter"></i>
          </a>
          <!-- Google +-->
          <a type="button" class="btn-floating btn-gplus">
            <i class="fa fa-google-plus"></i>
          </a>
        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2018 Copyright: Poveron S.r.l.
    </div>
    <!-- Copyright -->

  </footer>



</html>