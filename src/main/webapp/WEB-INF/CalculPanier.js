/**
 * 
 */

window.onload = init;

function init () {

  document.getElementById("form").onsubmit = qtePanier;

}

function qtePanier (){
	
		alert("La quantitee choisit est plus eleve que le stock disponible !!!");

}