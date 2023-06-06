
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Admin</title>
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
		<%@include file="structureAdmin/header.jsp" %></div> <br><br>
	<div class="container mb-5">
		<div class="row">
		
			<div class="col">
				<h1 class="mt-5 mb-5">Bienvenu aux gestions de stocks de tout les produits</h1>
		        <table border="1">
				        <c:forEach var="produit" items="${ produits }">
			        	<tr>
			        		  <td class="p-4">
					            <c:out value="${ produit.id }" />
					          </td>
					          <td class="p-4">
					            <c:out value="${ produit.name }" />
					          </td>
					          <td class="p-4">
					            <c:out value="${ produit.quantity }" />
					          </td>
					          <td class="p-4">
					            <c:out value="${ produit.price }" />
					          </td>
					          <td class="p-4">
					            <c:out value="${ produit.description }" />
					          </td>
					          <td class="p-4">
					          	<c:out value="${ produit.picture }" />
					          <!--  <img src="/WEB-INF/picture/register.png" width="20px" /> --> 
			            </tr>
				        </c:forEach>
		          </table>
			</div>
		</div>
	</div>
	
	
</body>
</html>