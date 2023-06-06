
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD PRODUIT</title>
  <!-- Bootstrap 5 CSS -->
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
  <!-- Google Fonts -->
  <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap'>
  <!-- Bootstrap 5 JS -->
  <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'></script>
  
  <link rel='stylesheet' href='./css/addProduit.css'>
</head>
<body>

	<div class="mb-5">
		<%@include file="structureAdmin/header.jsp" %></div> <br><br>		
		
		
	<div class="container">
		<div class="row p-5" >
			
			<div class="col">
			
				<h3>Ajouter un produit</h3>
				
				
				<div class="mt-5 pt-5">
				
				<c:if test="${ !empty fichier }"><p class="text-success"><c:out value="Produit ajouter avec succes ! " /></p></c:if>
				
				
					<form method="post" action="addProduit" enctype="multipart/form-data">
					  <div class="form-group">
					    <label for="picture">Image du produit</label>
					    <input type="file" class="form-control" id="picture" aria-describedby="emailHelp" name="picture" placeholder="image du produit" />
					  </div> <br>
					  <div class="form-group">
					      <label for="name">Nom du produit</label>
					      <input type="text" class="form-control" name="name" id="name" placeholder="Nom du produit" required>
					   </div> <br>
					   <div class="form-group">
					      <label for="price">Prix</label>
					      <input type="text" class="form-control" name="price" id="price" placeholder="Prix"  required>
					   </div> <br>
					   <div class="form-group">
					      <label for="quantity">Quantite</label>
					      <input type="number" class="form-control" name="quantity" id="quantity" placeholder="10"  required>
					   </div> <br>
					   <div class="form-group">
					      <label for="description">Description</label>
					      <input type="text" class="form-control" name="description" id="description" placeholder="La derniere sortie de samsung pack S23"  required>
					   </div> 
					  <button type="submit" class="btn btn-success bold-btn fs-5 mt-5 p-2 text-white">Ajouter maintenant</button> 				
					</form>
				</div>
			</div>
			<div class="col-1"></div>
			<div class="col-7">
		        <table border="1">
				        
			        	<tr>
			        	<th class="p-3 text-success">
				            <c:out value="id" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="NAME OF PRODUCT" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="QUANTITY" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="PRICE" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="DESCRIBES" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="PICTURE" />
				         </th>
			        	</tr>
				     
				        <c:forEach var="produit" items="${ produits }">
			        	<tr>
			        		  <td class="p-3">
					            <c:out value="${ produit.id }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.name }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.quantity }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.price }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ produit.description }" />
					          </td>
					          <td class="p-3">
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