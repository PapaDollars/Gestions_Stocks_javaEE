
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
  <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'></script>

  <title>Header</title>
</head>
<body>
  <section class="fixed-top bg-white">
    <div>
      <div class="container-fluid bg-success p-2"></div>

      <!-- Search -->
        <div class="container-fluid">
          <div class="row align-items-center p-2">
            <div class="col-3">
              <div><img src="" alt="logo"></div>
            </div>
            <div class="col">
	            <nav class="navbar navbar-light">
	              <form class="form-inline">
				      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
				     <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> --> 
				    </form>
			    </nav>
            </div>
            <div class="col-4">
            <span>
            	<c:if test="${ !empty sessionScope.prenom }"> 
            		${ sessionScope.prenom }
            	</c:if>
			</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	              <c:if test="${ !empty sessionScope.prenom }"> 
	              	<a href="/GestionStocks_ict308/panier"><img src="https://cdn.pixabay.com/photo/2016/12/12/13/23/shopping-cart-1901584_1280.png" width="40" alt="panier"></a>
	              </c:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		          <c:if test="${ empty sessionScope.prenom }"> 
	              	<a href="/GestionStocks_ict308/register"><button type="button" class="btn btn-success btn-md">Creer un compte</button></a> 
	              </c:if>
	              <c:if test="${ empty sessionScope.prenom }"> 
	              	<a href="/GestionStocks_ict308/login"><button type="button" class="btn btn-success btn-md">Se connecter</button></a> 
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
              <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-content">
                <div class="hamburger-toggle">
                  <div class="hamburger">
                    <span class="navbar-toggler-icon"></span>
                  </div>
                </div>
              </button>
              <div class="collapse navbar-collapse " id="navbar-content">
                <ul class="navbar-nav navbar-expand-lg mr-auto mb-2 mb-lg-0 ">
                  <li class="nav-item bgcategorie">
                    <a class="nav-link active" aria-current="page" href="/GestionStocks_ict308/">Tous les produits</a>
                  </li>
                <!-- link 1 -->
                 
                <!-- link 5 -->
                </ul>
              </div>
            </div>
          </nav>

        </div>

    </div>
  </section>
</body>
</html>