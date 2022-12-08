<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<!-- / navigation -->

	<div id="breadcrumbs">
		<div class="container">
			<ul>
				<li><a href="#">Home</a></li>
				<li>Chi tiết sản phẩm</li>
			</ul>
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	<div id="body">
		<div class="container">
			<div id="content" class="full">
				<div class="product">
					<div class="image">
						<img src="/JewelryShop/assets/images/${Product.product_img}" alt="">
					</div>
					<div class="details">
						<h1>${Product.product_name}</h1>
						<h4><fmt:formatNumber type="number" groupingUsed="true" value="${Product.product_price}" />₫</h4>
						<div class="entry">
							
							<div class="tabs">
								<div class="nav">
									<ul>
										<li class="active"><a href="#desc">Mô Tả</a></li>
										<li><a href="#spec">Chi Tiết</a></li>
										<li><a href="#ret">Khuyến Mãi</a></li>
									</ul>
								</div>
								<div class="tab-content active" id="desc">
									<p>${Product.product_long_desc}</p>
								</div>
								<div class="tab-content" id="spec">
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
								</div>
								<div class="tab-content" id="ret">
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
								</div>
							</div>
						</div>
						<div class="actions">
							<label>Số Lượng:</label>
							<select><option>1</option></select>
							<a href="/JewelryShop/cart/add/${Product.product_id }" class="btn-grey">Thêm giỏ hàng</a>
						</div>
					</div>
				</div>
			</div>
			<!-- / content -->
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	



</body>


