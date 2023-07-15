
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
<body class="d-flex h-100 text-center text-white bg-dark">

  
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <h3 class="float-md-start mb-0 text-warning fs-1">ICT308 - J2EE </h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link active text-warning fs-4" aria-current="page" href="/GestionStocks_ict308/">
          
          Accueil
        </a>
        <div class="nav-link " >
          <form class="col-lg-auto mb-3 mb-lg-0 me-lg-3" action="/search" method="post" id="searchForm">
            <input  class="form-control mx-2" type="text" name="search" placeholder="Example Search " aria-label="Search">
          </form>
        </div>
      </nav>
    </div>
  </header>

     <div class="mt-5 mb-5" >
       <h1>Creer une application web de Gestions de Stocks
       </h1>
       <p class="lead"> Ce qui nous différencie de nos concurrents, c'est que nous nous sommes engages dans une démarche qualite…
       </p>
     </div>
  <main class="px-3">

     

  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
      <div class="my-3 py-3">
        <h2 class="display-5">Gestions de Stocks</h2>
        <p class="lead">nous sommes engages dans une démarche qualite.</p>
      </div>
      <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
    <div class="bg-warning me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 p-3">
        <h2 class="display-5 text-dark">Gestions de Stocks</h2>
          <p class="lead">nous sommes engages dans une démarche qualite.</p>
      </div>
      <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
      <div class="my-3 py-3">
        <h2 class="display-5">Gestions de Stocks</h2>
         <p class="lead">nous sommes engages dans une démarche qualite.</p>
      </div>
      <div class="bg-success shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 p-3">
        <h2 class="display-5 text-dark">Gestions de Stocks</h2>
          <p class="lead">nous sommes engages dans une démarche qualite.</p>
      </div>
      <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
  </div>

</main>
<main>

      <div class="container">
		<div class="row p-5 justify-content-center" >
			
			<div class="col-6">
			
				<h1>Se connecter</h1>
				
				<div class="mt-5 pt-5">
				<p class="text-danger"><c:out value="${ connectError.resultError }" /></p>
				<p class="text-danger"><c:out value="${ connectError.address }" /></p>
					<form method="post" action="login">
					  <div class="form-group">
					    <label for="address">Adresse email</label>
					    <input type="email" class="form-control" id="address" name="address" aria-describedby="emailHelp" placeholder="Enter email" />
					  </div> <br>
					  <div class="form-group">
					    <label for="password">Mot de passe</label>
					    <input type="password" class="form-control" name="password" id="password" placeholder="******" />
					  </div>
					  <button type="submit" class="btn btn-warning bold-btn fs-5 mt-5 p-2">connexion</button>
					</form>
				</div>
			</div>
			
		</div>
	</div>
  </main>

  <footer class="mt-auto text-white-50 mt-5">
    <p>Copyright @PapaDollar - Project_ict308</p>
  </footer>

</div>





</body>

</html>