
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Valider Panier</title>
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

	<div class="mb-5">
		<%@include file="structure/header.jsp" %></div> <br><br>
	
	<div class="container">
		<div class="row p-5" >
		<h3>Vos informations Personnels <br> pour valider votre commande</h3>
			<div class="col">
			
			</div>
			<div class="col-6">
				<div class="row">
					<div class="col">
						<form>
						  <div class="form-group">
						    <label for="exampleInputEmail1">Adresse email</label>
						    <input type="email" class="form-control" name="address" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
						  </div> <br>
						   <div class="form-group">
						      <label for="validationDefault01">Telephone</label>
						      <input type="text" class="form-control" name="phone" id="validationDefault01" placeholder="237 6 969 719 12" value="Mark" required>
						   </div> <br>
						  <button type="submit" class="btn btn-success bold-btn fs-5 m-4 p-2 text-white">Commander maintenant</button>
						</form>
					</div>
				</div>
				
				
			</div>
			<div class="col">
			
			</div>
		</div>
	</div>
	
</body>
</html>