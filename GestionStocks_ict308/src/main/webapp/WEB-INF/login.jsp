
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
  <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'></script>
  
</head>
<body>
	
	<div class="mb-5"></div> 
		
		
	<div class="container">
		<div class="row p-5" >
			
			<div class="col">
			<div class="mb-5"><a class="nav-link active" aria-current="page" href="/GestionStocks_ict308/">__ accueil</a></div> 
				<h3>Se connecter</h3>
				
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
			
			<div class="col-2"></div>
			<div class="col-6">
				<img alt="" src="https://www.ordi2-0.fr/wp-content/uploads/2020/11/gestiondustock.jpg" width="800px" height="700px" />
			</div>
		</div>
	</div>
</body>
</html>