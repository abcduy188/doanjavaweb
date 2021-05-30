<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<section style="padding-top: 100px">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<img alt="anh" src="../template/img/${model.hinhanh}" class="img-fluid">
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
		</div>
	</section>
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
</body>
</html>