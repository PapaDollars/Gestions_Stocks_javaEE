
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Panier</title>
  <!-- Bootstrap 5 CSS -->
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
  <!-- Google Fonts -->
  <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap'>
  <!-- Bootstrap 5 JS -->
  <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'></script>
  
  <script src='CalculPanier.js'></script>
</head>
<body>

	<div class="mb-5">
		<%@include file="structure/header.jsp" %></div> <br><br>
	
	<div class="container">
		<div class="row p-5" >
		<h3>Votre panier</h3>
			<div class="col">
			
			</div>
			<div class="col-6">
				<div class="row">
					<div class="col">
						<img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKAWk6htXoV4scyH7C_VQGqCOFiiSrpreVoVPB_Y2c5rU8-XFv8OB0l7ONA4YJPR3qgQU&usqp=CAU" width="130px" height="130px" />
						<p>Iphone 13 pro max</p>
					</div>
					<div class="col">
						
							
						
						<c:choose>
							<c:when test="${ qte.qte < qteProduit }"><p class="text-danger"><c:out value="${ qte.resultat }"  /></p></c:when>
						</c:choose>
						<form method="post"  action="panier" id="form" class="p-5">
						
							<input type="text" value="<c:out value="Stock(s) : ${ qte.qte  }" />" name="qte" disabled/> <br><br>
							<input type="number" name="qteProduit" id="qteProduit" onkeyup="qtePanier();"/>
							<p>prix unitaire : 100.00.fcfa</p>	
							<input type="submit" value="Valider Produit"  />
						</form>
					</div>
				</div>
				
				<!-- sommes totales de la commande -->
				<div class="p-3 m-5 text-white bg-success align-center">
				
					prix total : <b> 	${qteProduit * 100000 }.fcfa	</b></div>
				
				<!--  <div><button class="btn btn-primary bold-btn fs-5 m-4 p-3 text-white">Commander</button></div>  -->
				<button class="btn btn-primary bold-btn fs-5 m-4 p-3 text-white" >Commander</button>
				
			</div>
			<div class="col">
			
			</div>
		</div>
	</div>
</body>
</html>