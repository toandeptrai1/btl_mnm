<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	
	<div id="slider">
		<ul>
			<li style="background-image: url(assets/images/02.jpg)">
				<h3>Make your life better</h3>
				<h2>Genuine diamonds</h2> <a href="#" class="btn-more">Read more</a>
			</li>
			<li class="purple" style="background-image: url(assets/images/0.jpeg)">
				<h3>She will say “yes”</h3>
				<h2>engagement ring</h2> <a href="#" class="btn-more">Read more</a>
			</li>
			<li class="yellow" style="background-image: url(assets/images/01.jpeg)">
				<h3>You deserve to be beauty</h3>
				<h2>golden bracelets</h2> <a href="#" class="btn-more">Read more</a>
			</li>
		</ul>
	</div>
	<!-- / body -->

	<div id="body">
		<div class="container">
			<div class="last-products">
				<h2>Sản phẩm mới</h2>
				<section class="products">
					<c:forEach items="${listNewP}" var="item">
						<article >
							<img src="/JewelryShop/assets/images/${item.product_img }" alt="" style="width: inherit;">
							<h3></h3>
							<h4>${item.product_name }</h4>
							<a href="/JewelryShop/cart/add/${item.product_id }" class="btn-add">Thêm giỏ hàng</a>
						</article>
						
					</c:forEach>
					
				</section>
			</div>
			<section class="quick-links">
				<article style="background-image: url(assets/images/2.jpg)">
					<a href="#" class="table">
						<div class="cell">
							<div class="text">
								<h4>Lorem ipsum</h4>
								<hr>
								<h3>Dolor sit amet</h3>
							</div>
						</div>
					</a>
				</article>
				<article class="red" style="background-image: url(assets/images/3.jpg)">
					<a href="#" class="table">
						<div class="cell">
							<div class="text">
								<h4>consequatur</h4>
								<hr>
								<h3>voluptatem</h3>
								<hr>
								<p>Accusantium</p>
							</div>
						</div>
					</a>
				</article>
				<article style="background-image: url(assets/images/4.jpg)">
					<a href="#" class="table">
						<div class="cell">
							<div class="text">
								<h4>culpa qui officia</h4>
								<hr>
								<h3>magnam aliquam</h3>
							</div>
						</div>
					</a>
				</article>
			</section>
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->




</body>


