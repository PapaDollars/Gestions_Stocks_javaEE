
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
		<%@include file="structure/header.jsp" %></div> <br><br><br>
	
	<div class="container-fluid">
		<div class="row p-5" >
		
			<section class="h-100" style="background-color: #eee;">
					  <div class="container h-100 py-5">
					    <div class="row d-flex justify-content-center align-items-center h-100">
					      <div class="col-10">
					
					        <div class="d-flex justify-content-between align-items-center mb-4">
					          <h3 class="fw-normal mb-0 text-success fs-1">Votre panier</h3>
					        </div> 	 	
					 <c:forEach var="produit" items="${ produits }"> 
					        <div class="card rounded-3 mb-4">
					          <div class="card-body p-4">
					            <div class="row d-flex justify-content-between align-items-center">
					              <div class="col-md-2 col-lg-2 col-xl-2">
					                <img
					                  src="http://localhost:8080${ produit.picture }"
					                  class="img-fluid rounded-3" alt="Cotton T-shirt">
					              </div>
					              <div class="col-md-3 col-lg-3 col-xl-3">
					                <p class="lead fw-normal mb-2">${ produit.name 	}</p>
					                <p><span class="text-muted">Size: </span>M <span class="text-muted">Color: </span>Grey</p>
					              </div>
					              <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
					                 <button class="btn btn-link px-2"
					                  onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
					                  <i class="fas fa-minus"></i>
					                </button>
					
					                <input id="form1" name="qteProduit" min="1" max="${ produit.quantity  }" type="number" value="${ produit.quantity  }"
					                  class="form-control form-control-sm" />
					
					                <button class="btn btn-link px-2"
					                  onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
					                  <i class="fas fa-plus"></i>
					                </button>
					              </div>
					              <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
					                <h5 class="mb-0">${ produit.price } $</h5>
					              </div>
					              <div class="col-md-1 col-lg-1 col-xl-1 text-end">
					              			
					                <a href="#!" class="text-danger"><i class="fas fa-trash fa-lg"></i></a>
					              </div>
					            </div>
					          </div>
					        </div>
					       	
				 </c:forEach> 	
					       
			
						
			
			
		
					
					        <div class="card">
					          <div class="card-body">
					            <button type="button" class="btn btn-warning btn-block btn-lg">Commander</button>
					          </div>
					        </div>
					
					      </div>
					    </div>
					  </div>
			</section>
	
		</div>
	</div>
	
	
	<div >
		<%@include file="structure/footer.jsp" %>
	</div>
</body>
</html>