<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<link rel="stylesheet" media="all" href="/JewelryShop/assets/css/bootstrap.min.css">
	<div id="breadcrumbs">

		<div class="container">
			<ul>
				<li><a href="#">Home</a></li>
				<li>My Profile</li>
			</ul>
		</div>
		<!-- / container -->
	</div>
	<hr>

<div class="container bootstrap snippet">

    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
     
        
      </div></hr><br>

               
      
          
          
         
          
        </div><!--/col-3-->
    	<div class="col-sm-7 ">
         

              
          <div class="tab-content">
          <div class="text-center">
           <label><h4 class="text-success">Thông tin cá nhân</h4></label>
          </div>
         
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="editProfile" method="post" id="registrationForm"  onsubmit='return checkValidate()'>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>Số điện thoại</h4></label>
                              <input type="text" class="form-control" name="SDT" id="first_name" placeholder="Số điện thoại" value="${User.user_phone }" >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Họ tên</h4></label>
                              <input type="text" class="form-control" name="hoTen" id="username" placeholder="Họ và tên" value="${User.user_fullname }" >
                              <small style="color: red; font: 50px; "></small>
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="phone" placeholder="Email" value="${User.user_email }" >
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Địa chỉ</h4></label>
                              <input type="text" class="form-control" name="diaChi" id="mobile" placeholder="Địa chỉ" value="${User.user_address }">
                          </div>
                      </div>
                      
                         <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Tên đăng nhập</h4></label>
                              <input type="text" class="form-control" name="tenDN"  placeholder="Tên đăng nhập" value="${User.user_name }">
                          </div>
                      </div>
                      
                        <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mât khẩu</h4></label>
                              <input type="password" class="form-control" name="password"  placeholder="Mật khẩu" value="${User.user_pass }">
                          </div>
                      </div> 
                     
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Lưu</button>
                               
                               		<p class="text-success">${message }</p>
                            </div>
                      </div>
              	</form>
            
              	
              
              <hr>
              
             </div><!--/tab-pane-->
             <div class="tab-pane" id="messages">
               
               <h2></h2>
               
               <hr>
                  <form class="form" action="##" method="post" id="registrationForm" >
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="enter your mobile number if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                              <input type="email" class="form-control" id="location" placeholder="somewhere" title="enter a location">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              	</form>
               
             </div><!--/tab-pane-->
             <div class="tab-pane" id="settings">
            		
               	
                  <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="enter your mobile number if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                              <input type="email" class="form-control" id="location" placeholder="somewhere" title="enter a location">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success pull-right" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                            </div>
                      </div>
              	</form>
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
    
    <script>
		//Truy cập vào các ô input

		const usernameEle = document.getElementById('username');
		const emailEle = document.getElementById('email');
		const phoneEle = document.getElementById('phone');


		// Validate dữ liệu trong các ô input và highlight
		function checkValidate() {
			
			let usernameValue = usernameEle.value.trim();
			let emailValue = emailEle.value.trim();
			let phoneValue = phoneEle.value.trim();

			let isCheck = true;
			
			// Kiểm tra trường username
			var regex = /[a-zA-Z]+$/;
			if (!regex.test(usernameValue)) {
				setError(usernameEle, 'Tên không được chứa các kí tự bất thường');
				isCheck = false;
				return isCheck;
			} else{
				setSuccess(usernameEle);
			}

			// Kiểm tra trường email
			if (emailValue == '') {
				setError(emailEle, 'Email không được để trống');
				isCheck = false;
				return isCheck;
			} else if (!isEmail(emailValue)) {
				setError(emailEle, 'Email không đúng định dạng');
				isCheck = false;
				return isCheck;
			} else {
				setSuccess(emailEle);
			}

			// Kiểm tra trường phone
			if (phoneValue == '') {
				setError(phoneEle, 'Số điện thoại không được để trống');
				isCheck = false;
				return isCheck;
			} else if (!isPhone(phoneValue)) {
				setError(phoneEle, 'Số điện thoại không đúng định dạng');
				isCheck = false;
			} else {
				setSuccess(phoneEle);
			}
			
			return isCheck;
		}
		function setError(ele, message) {
			let parentEle = ele.parentNode;
			parentEle.classList.add('error');
			ele.style.color = "red";
			parentEle.querySelector('small').innerText = message;
		}
		function setSuccess(ele) {
			ele.parentNode.classList.add('success');
		}
		function isEmail(email) {
			return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
					.test(email);
		}

		function isPhone(number) {
			return /(84|0[3|5|7|8|9])+([0-9]{8})\b/.test(number);
		}
	</script>

</body>


