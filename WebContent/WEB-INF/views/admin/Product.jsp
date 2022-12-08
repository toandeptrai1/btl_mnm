<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/layout/user/taglib.jsp" %>
<body>
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>Product</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Product</li>
          <li class="breadcrumb-item active">Product View</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">
      	<!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

                

                <div class="card-body pb-0">
                  <h5 class="card-title">Products View</h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                      
                        <th scope="col">Image</th>
                        <th scope="col">Product ID</th>
                       
                        <th scope="col">Product Name</th>
                        <th scope="col">Price</th>
                        
                        <th scope="col" colspan="2">Thực Hiện</th>
                      </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="item" items="${ListP }">
                    	<tr>
                        <th scope="row"><a href="#"><img src="<%=request.getContextPath()%>/assets/images/${item.product_img}" alt=""></a></th>
                         <td class="fw-bold">${item.product_id }</td>
                    		
                      
                        <td>${item.product_name }</td>
                        <td class="fw-bold">${item.product_price }</td>
                       
                        <td><a href="/JewelryShop/quan-tri/product/detail?id=${ item.product_id}" class="btn btn-primary btn-sm"><i class="fa-solid fa-user-pen"></i></a></td>
                        <td><a href="#" class="btn btn-danger btn-sm "><i class="fa-solid fa-trash-can"></i></a></td>
                      </tr>
                    	</c:forEach>
                     
                     
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Top Selling -->
    
      	 
       

       
      </div>
    </section>

  </main><!-- End #main -->

</body>

