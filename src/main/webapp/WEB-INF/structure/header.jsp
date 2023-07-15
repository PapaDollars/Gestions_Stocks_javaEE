
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

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

  <title>Header</title>
</head>
<body>

<section class="fixed-top bg-white">
    <div>
    

      <!-- Search -->
        <div class="container-fluid bg-dark">
          <div class="row align-items-center p-4">
            <div class="col-5">
              <a class="nav-link active fs-2 text-warning" aria-current="page" href="/GestionStocks_ict308/">Tous les produits</a>
            </div>
            <div class="col">
	            <nav class="navbar navbar-light">
	               <form class="d-flex">
				        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				        <button class="btn btn-outline-warning" type="submit">Search</button>
				      </form>
			    </nav>
            </div>
            <div class="col-3">
            
	            <a type="button" href="/GestionStocks_ict308/notifications" class="btn btn-warning position-relative">
				  Notify
				  <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
				    99+
				  </span>
				</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="text-light">
            	<c:if test="${ !empty sessionScope.prenom }"> 
            		${ sessionScope.prenom }
            	</c:if>
			</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	              <c:if test="${ !empty sessionScope.prenom }"> 
	              	<a href="/GestionStocks_ict308/panier"><img src="https://static.wixstatic.com/media/52e5ed_c900a70d39154c8abb79e09269ac143e.png" width="40" alt="panier"><span>2</span></a>
	              </c:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		          <c:if test="${ empty sessionScope.prenom }"> 
	              	<a href="/GestionStocks_ict308/register"><button type="button" class="btn btn-warning btn-md">Creer un compte</button></a> 
	              </c:if>
	              <c:if test="${ empty sessionScope.prenom }"> 
	              	<a href="/GestionStocks_ict308/login"><button type="button" class="btn btn-warning btn-md">Se connecter</button></a> 
	              </c:if>
	              <c:if test="${ !empty sessionScope.prenom }"> 
	              	<a href="/GestionStocks_ict308/login"><button type="button" class="btn btn-danger btn-md">deconnexion</button></a>
	              </c:if>
              
              
            </div>
          </div>
        </div>


        <!-- Menu -->
        <div>
          <nav class="navbar navbar-expand-lg navbar-light bg-warning shadow">
            <div class="container-fluid">
                
            </div>
          </nav>

        </div>

    </div>
  </section>

</body>
</html>