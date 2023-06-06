
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT PRODUIT</title>
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
		
		
	<div class="container">
		<div class="row p-5" >
			
			<div class="col">
			
				<h3>Modifier un produit</h3>
				
				
				<div class="mt-5 pt-5">
				
				
				
					<form method="post" action="editProduit" enctype="multipart/form-data">
					<div class="form-group">
					      <label for="id">Id</label>
					      <input type="text" class="form-control" name="id" disabled id="id" value="${ p.id }">
					   </div> <br>
					  <div class="form-group">
					    <label for="picture">Image du produit</label>
					    <input type="file" class="form-control" id="picture" aria-describedby="emailHelp"  value="${ p.picture }" name="picture"  />
					  </div> <br>
					  <div class="form-group">
					      <label for="name">Nom du produit</label>
					      <input type="text" class="form-control" name="name" id="name" value="${ p.name }"  >
					   </div> <br>
					   <div class="form-group">
					      <label for="price">Prix</label>
					      <input type="text" class="form-control" name="price" id="price" value="${ p.price }" placeholder="Prix"  >
					   </div> <br>
					   <div class="form-group">
					      <label for="quantity">Quantite</label>
					      <input type="number" class="form-control" name="quantity" id="quantity" value="${ p.quantity }"  >
					   </div> <br>
					   <div class="form-group">
					      <label for="description">Description</label>
					      <input type="text" class="form-control" name="description" id="description"  value="${ p.description }" >
					   </div> 
					  <button type="submit" class="btn btn-primary bold-btn fs-5 mt-5 p-2 text-white">Modifier maintenant</button> 				
					</form>
				</div>
			</div>
			<div class="col-2"></div>
			<div class="col-6">
		       <table border="1">
				        
			        	<tr>
			        	<th class="p-3 text-primary">
				            <c:out value="id" />
				         </th>
				         <th class="p-3 text-primary">
				            <c:out value="NAME OF PRODUCT" />
				         </th>
				         <th class="p-3 text-primary">
				            <c:out value="QUANTITY" />
				         </th>
				         <th class="p-3 text-primary">
				            <c:out value="PRICE" />
				         </th>
				         <th class="p-3 text-primary">
				            <c:out value="DESCRIBES" />
				         </th>
				         <th class="p-3 text-primary">
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
					          </td>
					          <td>
				          		<form method="get" action="editProduit" >
				          		<input type="hidden" value="${ produit.id }" name="id_produit"/>
				          			<button type="submit" class="btn btn-primary bold-btn text-white">EDIT</button>
				          		</form>
					          </td>
			            </tr>
				        </c:forEach>
		          </table>
			</div>
			
		</div>
	</div>
	
</body>
</html>