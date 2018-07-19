<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>

<title>Compra</title>
</head>

<body>


<nav class="navbar navbar-inverse">
<br>
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">POVERON</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="login.jsp">Login</a></li>
      <li><a href="registrazione.jsp">Registrati</a></li>
      <li><a href="offerte.jsp">Offerte</a></li>
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


<div class="container, page-header text-center">
<h2><b>Inoltra ordine</b></h2>
<br><br><br>
</div>

<div class="container">
<form>
<h4>Tipologie di spedizione disponibili: </h4>

<br>
<br>
</div>
<div class="container">

<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Spedizione in Giornata
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        <p><b>Spedizione rapida</b></p>
        <br>
        <p>consegna effettuata durante la giornata</p>
        <br>
        <p>spese di spedizione: 10&#8364</p>
        <p>(da aggiungere al prezzo della spesa effettuata)</p>
        

<button type="button" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> scegli
</button>
        
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Spedizione Standard
          
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        <p><b>Spedizione Standard</b></p>
        <br>
        <p>consegna effettuata in max 3 giorni lavorativi</p>
        <br>
        <p>spese di spedizione: 5&#8364</p>
        <p>(da aggiungere al prezzo della spesa effettuata)</p>
        
        <button type="button" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> scegli
</button>
        
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Spedizione Gratuita
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <p><b>Spedizione Gratuita</b></p>
        <br>
        <p>consegna effettuata in max 10 giorni lavorativi</p>
        <br>
        <p>spese di spedizione: gratis</p>
        
        <button type="button" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> scegli
</button>
        
      </div>
    </div>
  </div>
</div>
</div>


<div align="right" >
<h5 align="right"><b>procedi con l'ordine</b></h5>

<div class="btn" role="bottone" aria-label="...">

  <button type="button" class="btn btn-default"><i class="far fa-credit-card fa-2x"></i><b>&nbsp ORDINA</b>       
  <br>
  </button>
  
</div>


</button>


</body>
</html>