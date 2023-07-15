
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
<body>
	
	<div class="mb-5">
		<%@include file="structure/header.jsp" %></div> <br>

	
	<div class="container">
	<img src="https://sp-ao.shortpixel.ai/client/q_lqip,ret_wait,w_1200,h_1200/https://macs.consulting/wp-content/uploads/2022/01/Gestion-des-stocks-MACS.png" width="1300px" height="900px" alt="...">
	
	</div>
		
	<div class="mb-5 mt-3">
	
	
		<div class="container mt-2 mb-2 bg-trasparent" style="position: relative">
            
              <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">

	                <c:forEach var="produit" items="${ produits }">
		                <div class="col mt-5">
			                <div class="d-">
			                
					        	 <div class="car 	d h-20 shadow-sm ">
				                      <img src="http://localhost:8080${ produit.picture }" class="card-img-top" width="200px" height="200px"  alt="${ produit.picture }" />
				                    <div class="label-top shadow-sm">
				                      <h4><c:out value="${ produit.name }" /></h4>
				                    </div>
				                    <div class="card-body">
				                      <div class="clearfix mb-3">
				                        <span class="float-start badge rounded-pill bg-success"><c:out value="${ produit.price }" /></span>
				                      </div>
				                      <h5  class="card-title">
				                        <c:out value="${ produit.description }" />
				                      </h5>
										<c:if test="${ !empty sessionScope.prenom }"> 
												<form method="post" action="panier">
							                     	   <div class="d-grid">
							                     	   		  <input type="hidden" value="${ produit.id }" name="id_produit">
							                      			  <button  class="btn btn-outline-warning border-5 bold-btn">add panier</button>
							                      		</div>
							                     </form>
						            	</c:if>
				                    </div>
				                  </div>
			                </div>
                 
                </div>
					   </c:forEach>
                
              </div>
              
          </div>
	</div>
	
	<div >
		<%@include file="structure/footer.jsp" %>
	</div>
	
</body>
</html>