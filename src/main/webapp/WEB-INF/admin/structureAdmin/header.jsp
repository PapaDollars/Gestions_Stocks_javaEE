
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="header.css">

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
  <section class="fixed-top bg-white">
    <div>
     <div class="container-fluide p-3">
     
     <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
    <div class="container-fluid">
      <a class="navbar-brand fs-3 text-warning" href="/GestionStocks_ict308/homeAdmin"> GESTIONS ADMIN </a>
      
      			<div class="col-5">
		            <form class="d-flex">
				        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				        <button class="btn btn-outline-warning" type="submit">Search</button>
				      </form>
	            </div>
	            
	             <div class="col-1">
	              <a href="/GestionStocks_ict308/login"><button type="button" class="btn btn-danger btn-md">deconnexion</button></a>
	            </div>
      
      <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar-collapse collapse" id="navbarsExample01" style="">
        <ul class="navbar-nav me-auto mb-2">
       	  <li class="nav-item p-2">
       	  <a class="btn btn-outline-warning p-3 mt-3" aria-current="page" href="/GestionStocks_ict308/homeAdmin">Home</a>
          </li>
          <li class="nav-item p-2">
            <a class="btn btn-outline-light p-3 " aria-current="page" href="/GestionStocks_ict308/addProduit">ADD PRODUIT</a>
          </li>
          <li class="nav-item p-2">
            <a class="btn btn-outline-warning p-3 " aria-current="page" href="/GestionStocks_ict308/editProduit">EDIT PRODUIT</a>
          </li>
          <li class="nav-item p-2 mb-3">
             <a class="btn btn-outline-warning  p-3" aria-current="page" href="/GestionStocks_ict308/deleteProduit">DELETE PRODUIT</a>
          </li>
        </ul>
        <form class="mb-2">
          <input class="form-control" type="text" placeholder="Recherche" aria-label="Search">
        </form>
      </div>
    </div>
  </nav>
  

        </div>

       

    </div>
  </section>
</body>
</html>