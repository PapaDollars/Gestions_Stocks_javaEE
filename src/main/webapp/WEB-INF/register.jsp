
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
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
		<%@include file="structure/header.jsp" %></div> <br>
		
		
	<div class="container">
		<div class="row p-5" >
			
			<div class="col">
			 
				<h3 class="fs-1 text-success">Creer un compte maintenant</h3>
				
				<div class="mt-5 pt-5">
				
				<c:choose>
					<c:when test="${ form.verified < 1 }"><p class="text-success"><c:out value="Votre compte a ete creer avec succes !!!" /></p></c:when>
					<c:when test="${ form.verified > 1 }"><p class="text-danger"><c:out value="Erreur de creation de compte pour : " /><span class="text-primary"><c:out value="${ prenom }" /></span></p></c:when>
				</c:choose>
					  
				
					<form method="post" action="register" >
					  <div class="form-group">
					    <label for="address">Adresse email</label>
					    <input type="email" class="form-control" id="address" name="address" aria-describedby="emailHelp" placeholder="Enter email" required/>
					  </div> <br>
					  <div class="form-group">
					      <label for="firstName">Prenom</label>
					      <input type="text" class="form-control" id="firstName" name="firstName" placeholder="firstName" required>
					   </div> <br>
					   <div class="form-group">
					      <label for="lastName">Nom</label>
					      <input type="text" class="form-control" id="lastName" placeholder="lastName" name="lastName" required>
					   </div> <br>
					  <div class="form-group">
					    <label for="password">Mot de passe</label>
					    <input type="password" class="form-control"  name="password" id="password" placeholder="******" required/>
					  </div> <br>
					  <div class="form-group">
					    <label for="confirmPassword">Confirmation Mot de passe</label>
					    <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="******" required/>
					  </div>
					  
					  <p class="text-warning"><c:out value="${ form.resultat }" /></p>
					  <button type="submit" class="btn btn-success bold-btn fs-5 mt-5 p-2 text-white">Creer maintenant</button>
					</form>
				</div>
			</div>
			
			<div class="col-2"></div>
			<div class="col-6 bg-success">
			<table border="1">
				        <c:forEach var="produit" items="${ produits }">
			        	<tr>
			        		  <td class="p-3">
					            <c:out value="${ produit.id }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.address }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.lastName }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.firstName }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.phone }" />
					          </td>
					          <td class="p-3">
					          	<c:out value="${ produit.password }" />
					          <!--  <img src="/WEB-INF/picture/register.png" width="20px" /> --> 
			            </tr>
				        </c:forEach>
		          </table>
				<img alt="" src="https://sp-ao.shortpixel.ai/client/q_lqip,ret_wait,w_1200,h_1200/https://macs.consulting/wp-content/uploads/2022/01/Gestion-des-stocks-MACS.png" width="900px" height="800px" />
			</div>
		</div>
	</div>
	
	<div >
		<%@include file="structure/footer.jsp" %>
	</div>
	
</body>
</html>