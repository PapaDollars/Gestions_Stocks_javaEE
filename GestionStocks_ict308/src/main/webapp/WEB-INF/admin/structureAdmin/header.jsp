
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
  <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'></script>

</head>
<body>
  <section class="fixed-top bg-white">
    <div>
      <div class="container-fluid bg-warning p-2"></div>

     


        <!-- Menu -->
        <div>
          <nav class="navbar navbar-expand-lg navbar-light bg-danger shadow">
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
                    <a class="nav-link active text-warning" aria-current="page" href="/GestionStocks_ict308/admin">GESTIONS DE STOCKS</a>
                  </li>
                <!-- link 1 -->
                  <li class="nav-item dropdown dropdown-mega position-static text-light">
                    <a class="nav-link text-light" href="/GestionStocks_ict308/addProduit" style="font-size: 100%;">ADD PRODUIT</a>
                  </li>
                <!-- link 2 -->
                <li class="nav-item dropdown dropdown-mega position-static pleft">
                  <a class="nav-link text-light" href="/GestionStocks_ict308/editProduit" style="font-size: 100%;">EDIT PRODUIT</a>
                </li>
                <!-- link 3 -->
                <li class="nav-item dropdown dropdown-mega position-static pleft">
                  <a class="nav-link text-light" href="/GestionStocks_ict308/deleteProduit" style="font-size: 100%;">DELETE PRODUIT</a>
                </li>
                <!-- link 4 -->
                <li class="nav-item dropdown dropdown-mega position-static pleft">
                  <a class="nav-link text-light" href="/GestionStocks_ict308/historyProduit" style="font-size: 100%;">HISTORY</a>
                </li>
                <!-- link 5 -->
                </ul>
              </div>
            </div>
          </nav>

        </div>
        
        
         <!-- Search -->
        <div class="container-fluid">
          <div class="row align-items-center p-2">
            <div class="col-3">
              <div><a href="/GestionStocks_ict308/admin"><img src="" alt="ADMINIS"></a>
              	   <a href="/GestionStocks_ict308/home"><img src="" alt="ACCUEIL"></a></div>
            </div>
            <div class="col">
	            <nav class="navbar navbar-light">
	              <form class="form-inline">
				      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
				     <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> --> 
				    </form>
			    </nav>
            </div>
            <div class="col-2">
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
             <a href="/GestionStocks_ict308/login"><button type="button" class="btn btn-danger btn-md">deconnexion</button></a>
            </div>
          </div>
        </div>

    </div>
  </section>
</body>
</html>