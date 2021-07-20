<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<section style="padding-top: 100px">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<img alt="anh"
						src="../template/assets/img/thumbnail/${model.hinhanh}"
						class="img-fluid">
				</div>
				<div class="col-6">
					<h3>${model.tensp}</h3>
					<a> <span class="text-bold text-warning">5/5</span> <svg
							width="12" height="12" viewBox="0 0 12 12" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                            <path
								d="M11.806 4.51433H7.32683L5.903 0L4.47917 4.51433H0L3.81967 7.29167L2.08333 11.806L5.903 9.028L9.72267 11.806L7.98633 7.29167L11.806 4.51433Z"
								fill="#FA6400"></path>
                        </svg> <span>(185 đánh giá)</span>
					</a>
					<h4>${model.mota}</h4>
					<h4>Video Review</h4>
					<iframe width="500" height="300"
						src="https://www.youtube.com/embed/uZvN3F2wWf0" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>

				</div>
			</div>
			<div>
				<hr>
				<h4>${model.content}</h4>
			</div>
			<h1 style="text-align: center;">HƯỚNG DẪN CHỌN SIZE CHUẨN</h1>
			<c:if test="${model.categoryCode == 'ao-so-mi'}">
				<div>
					<h4 style="text-align: center;">
						<span class="text--bold">Áo Sơ mi nam</span>
					</h4>
					<img src="../template/img/sizesomi.jpg" alt="size áo sơ mi"
						height="500px" width="auto">
				</div>
			</c:if>
			<c:if test="${model.categoryCode == 'ao-po-lo'}">
				<div>
					<h4 style="text-align: center;">
						<span class="text--bold">Áo POLO</span>
					</h4>
					<img src="../template/img/sizeaopolo.jpg" alt="size áo sơ mi"
						height="490px" width="auto">
				</div>
			</c:if>
			<c:if test="${model.categoryCode == 'ao-cotton-dai-tay'}">
				<div>
					<h4 style="text-align: center;">
						<span class="text--bold">Áo Cotton dài tay</span>
					</h4>
					<img src="../template/img/sizethundai.jpg" alt="size áo sơ mi"
						height="500px" width="auto">
				</div>
			</c:if>
			<c:if test="${model.categoryCode == 'ao-cotton-ngan-tay'}">
				<div>
					<h4 style="text-align: center;">
						<span class="text--bold">Áo Cotton ngắn tay</span>
					</h4>
					<img src="../template/img/sizethunngan.jpg" alt="size áo sơ mi"
						height="480px" width="auto">
				</div>
			</c:if>
			<c:if test="${model.categoryCode == 'ao-the-thao'}">
				<div>
					<h4 style="text-align: center;">
						<span class="text--bold">Áo Thể Thao</span>
					</h4>
					<img src="../template/img/sizethethao.jpg" alt="size áo sơ mi"
						height="500px" width="auto">
				</div>
			</c:if>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

</body>
</html>