
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
		<%@include file="structureAdmin/header.jsp" %></div> <br><br><br>	
		
		
	<div class="container-fluid">
		<div class="row p-5" >
			
			<div class="col">
				<h2 class="text-success" >Suppression les produits</h2>
				
				<table border="1" class="table table-bordered">
				        
			        	<tr>
			        	<th class="p-3 text-success bg-warning">
				            <c:out value="ID" />
				         </th>
				         <th class="p-3 text-success bg-warning">
				            <c:out value="NOM" />
				         </th>
				         <th class="p-3 text-success bg-warning">
				            <c:out value="QUANTITE" />
				         </th>
				         <th class="p-3 text-success bg-warning">
				            <c:out value="PRIX" />
				         </th>
				          <th class="p-3 text-success bg-warning">
				            <c:out value="DESCRIPTION" />
				         </th>
				         <th class="p-3 text-success bg-warning">
				            <c:out value="PICTURE" />
				         </th>
				         <th class="p-3 text-success ">
				            <c:out value="ACTION" />
				         </th>
			        	</tr>
				     
				        <c:forEach var="produit" items="${ produits }">
			        	<tr>
			        		  <td class="p-4 bg-warning">
					            <c:out value="${ produit.id }" />
					          </td>
					          <td class="p-4  " >
					            <c:out value="${ produit.name }" />
					          </td>
					          <td class="p-4 bg-light">
					            <c:out value="${ produit.quantity }" />
					          </td>
					          <td class="p-4 bg-light">
					            <c:out value="${ produit.price }" />
					          </td>
					          <td class="p-4 ">
					            <c:out value="${ produit.description }" />
					          </td>
					          <td class="p-4 bg-warning">
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
	
	<!-- FOOTER -->

  <footer class="container-fluid py-4">

      <img src="picture/login.png" width="100px" alt="" />

        <div class="row align-items-md-stretch">
          <div class="col-md-6">
            <div class="h-100 p-5 text-white bg-dark rounded-3">
              <h2>Go to dashboard</h2>
              <p>
				Un client au profil orgueilleux va avoir besoin d'être valorisé. 
				Il aura besoin d'un haut niveau de considération, et va se conduire en dominant.</p>
              <a class="btn btn-outline-light" href="/GestionStocks_ict308/homeAdmin">Dashboard</a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="h-100 p-5 bg-warning border rounded-3">
              <h2>Add product</h2>
              <p> Ce qui nous différencie de nos concurrents, c'est que nous nous sommes engagés dans une démarche qualité…  «
               Que diriez-vous de prendre un rendez-vous pour parler de votre entreprise, de votre organisation, de vos besoins ? Nous pourrons voir si nous avons un intérêt à collaborer. »</p>

              <a class="btn btn-light" href="/GestionStocks_ict308/addProduit" >Button add</a>
            </div>
          </div>
        </div>

	  </footer>
	  <footer class="container-fluid bg-dark  text-center text-light mt-4 text-muted border-top p-4">
	    Copyright @PapaDollar - Project_ict308
	  </footer>
	  
	  
</body>
</html>