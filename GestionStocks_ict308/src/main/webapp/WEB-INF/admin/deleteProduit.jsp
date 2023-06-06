
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE PRODUIT</title>
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
				<h3>Suppression les produits</h3>
				<table border="1">
				        
			        	<tr>
			        	<th class="p-3 text-danger">
				            <c:out value="id" />
				         </th>
				         <th class="p-3 text-danger">
				            <c:out value="NAME OF PRODUCT" />
				         </th>
				         <th class="p-3 text-danger">
				            <c:out value="QUANTITY" />
				         </th>
				         <th class="p-3 text-danger">
				            <c:out value="PRICE" />
				         </th>
				         <th class="p-3 text-danger">
				            <c:out value="DESCRIBES" />
				         </th>
				         <th class="p-3 text-danger">
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
				          		<form method="get" action="deleteProduit" >
				          		<input type="hidden" value="${ produit.id }" name="id_produit" />
				          			<button type="submit" class="btn btn-danger bold-btn text-white">DELETE</button>
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