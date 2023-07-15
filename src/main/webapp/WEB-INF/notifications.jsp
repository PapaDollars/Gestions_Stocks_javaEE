
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notifications</title>

  <!-- Bootstrap 5 CSS -->
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
  <!-- Google Fonts -->
  <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap'>
  <!-- Bootstrap 5 JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" ></script>  

  
</head>
<body>

	<div class="mb-5">
			<%@include file="structure/header.jsp" %></div> <br><br><br>
		
		<div class="container-fluide m-4">
		<div class="row p-5" >
			
			<div class="col">
			
				<h1 class="text-success">Notifications de tout les produits ajouter...</h1>
				
				
					<c:forEach var="produit" items="${ produits }">
					
						<div class="bg-dark m-5 mx-5 p-5  bg-light" role="alert" aria-live="assertive" aria-atomic="true">
						  <div class="toast-header">
						  	<img src="http://localhost:8080${ produit.picture }" width="150px" height="150px" class="img-thumbnail" alt="...">
						    <strong class="me-auto fs-4	">Le produit  <c:out value="${ produit.name } " /></strong>
						    <small>11 mins ago</small>
						    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
						  </div>
						  <div class="toast-body fs-5">
						    <span class="text-light"> Viens d'etre mise a jour.  Quantitee : </span><span class="text-warning fs-4"> <c:out value="${ produit.quantity }" />.</span>
						    <span class="text-light"> Pour le prix de.  : </span><span class="text-warning fs-4"> <c:out value="${ produit.price }" />.</span>
						     <span class="text-light"> Description du produit  :</span> <span class="text-warning fs-4"> <c:out value="${ produit.description }" />.</span>
						  </div>
						</div>
						
				        </c:forEach>
			</div>
			
		</div>
	</div>
		


		<<div >
		<%@include file="structure/footer.jsp" %>
	</div>
		
</body>
</html>