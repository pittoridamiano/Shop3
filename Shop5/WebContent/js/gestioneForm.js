function validazione() {
	var nome = document.getElementById('nome').value;
	var username = document.getElementById('username').value;
	var password = document.getElementById('password').value;
	console.log(nome + " - " + username + " - " + password); 
	if (nome != '' & username != '' & password != '') {
		return true;
	} else {
		document.getElementById('alert').style.display = 'block';		
		return false;
	}
}


function validazioneLogin() {
	var username = document.getElementById('username').value;
	var password = document.getElementById('password').value;
	console.log(username + " - " + password); 
	if (username != '' & password != '') {
		return true;
	} else {
		document.getElementById('alert').style.display = 'block';		
		return false;
	}
}

function conferma() {
	return window.confirm('sei sicuro di voler cancellare l\'utente ?');
}

$(document).ready(function(e){
    $('.search-panel .dropdown-menu').find('a').click(function(e) {
		e.preventDefault();
		var param = $(this).attr("href").replace("#","");
		var concept = $(this).text();
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #search_param').val(param);
	});
});


$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})


