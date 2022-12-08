<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@include file="/WEB-INF/views/layout/user/taglib.jsp" %>
<body>
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>Product</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Product</li>
          <li class="breadcrumb-item active">Edit Product</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">


                <li class="nav-item">
                  <button class="nav-link active " data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Product</button>
                </li>

              </ul>
              <div class="tab-content pt-2">

                

                <div class="tab-pane fade show active profile-edit pt-3" id="profile-edit">

                  <!-- Profile Edit Form -->
                  <form action="/JewelryShop/quan-tri/product/uploadFile" enctype="multipart/form-data" method="post">
                  	<div class="row mb-3">
                      <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                      <div class="col-md-8 col-lg-9">
                        <img src="/JewelryShop//assets/images/0.jpeg" alt="Profile">
                        <div class="input-group mt-3">
						  <input type="file" name="multipartFile"  class="form-control" id="inputGroupFile02">
						  <button class="input-group-text" type="submit">Upload</button>
						</div>
                      </div>
                    </div>
                  </form>
                  
                  
                  <form method="post" action="/JewelryShop/quan-tri/user/edit">
                    

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="fullName" type="text" class="form-control" id="fullName" value="${userEdit.user_fullname }">
                      </div>
                    </div>

                  

                  

                    

                    <div class="row mb-3">
                      <label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="address" type="text" class="form-control" id="Address" value="${userEdit.user_address }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="phone" type="text" class="form-control" id="Phone" value="${userEdit.user_phone }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" class="form-control" id="Email" value="${userEdit.user_email }">
                      </div>
                    </div>

                    <input name="id" type="hidden" class="form-control" id="Email" value="${userEdit.user_id}">

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                  </form><!-- End Profile Edit Form -->

                </div>



              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

</body>

