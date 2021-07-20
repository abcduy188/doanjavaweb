<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="vn.name.dcd.utils.SecurityUtils"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Trang Chu</title>

</head>

<body>
	
	<!-- 	CAROUSEL -->
	<section class="movieCarousel">
		<div id="carouselMovie" class="carousel slide carousel-fade">
			<ol class="carousel-indicators container">
				<li data-target="#carouselMovie" data-slide-to="0" class="active"></li>
				<li data-target="#carouselMovie" data-slide-to="1"></li>
				<li data-target="#carouselMovie" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">

				<div class="carousel-item active">
					<div class="overlay"></div>
					<img src="https://mcdn.coolmate.me/image/April2021/bg.png"
						class="d-block w-100 h-auto" alt="...">
					<div class="container carousel-caption d-none d-md-block">

						<p class="text-warning ">DELIVERING HAPPINESS</p>
						<h2 class="display-4">New Shopping</h2>
						<h2>Experience for Men</h2>
						<div>
							<span class="border rounded-circle p-2">DCD</span>
							<button class="btn_trailer">
								<i class="fa fa-play mr-2"></i>MORE INFORMATION
							</button>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="overlay"></div>
					<img src="template/img/2.jpg" class="d-block w-100" alt="...">
					<div class="container carousel-caption d-none d-md-block">
						<p class="text-warning">DELIVERING HAPPINESS</p>
						<h2 class="display-4">New Shopping</h2>
						<h2>Experience for Men</h2>
						<div>
							<span class="border rounded-circle p-2">DCD</span>
							<button class="btn_trailer">
								<i class="fa fa-play mr-2"></i>MORE INFORMATION
							</button>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="overlay"></div>
					<img src="template/img/3.jpg" class="d-block w-100" alt="...">
					<div class="container carousel-caption d-none d-md-block">
						<p class="text-warning">DELIVERING HAPPINESS</p>
						<h2 class="display-4">New Shopping</h2>
						<h2>Experience for Men</h2>
						<div>
							<span class="border rounded-circle p-2">DCD</span>
							<button class="btn_trailer">
								<i class="fa fa-play mr-2"></i>MORE INFORMATION
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="newIn">
		<div class="container">
			<h1 class="newIn__title p-top:100px " style="padding-top: 100px;">NEW
				IN</h1>
			<div class="d-flex">
				<div class="row">
					<div class="col-6 col-md-3">
						<div class="newIn__item">
							<div class="newIn__info">
								<img class="img-fluid" src="template/img/somi1.jpg" alt="">
								<div class="newIn__overlay"></div>
								<div class="newIn__detail">
									<i class="fa fa-play"></i> <a href="<c:url value='trang-chu/danh-sach?id=20018'/>">MORE INFORMATION</a>
									<p>Release: 7 Mar, 2020</p>
								</div>
							</div>
							<p class="newIn__item__title">The last post</p>
							<p class="newIn__item__rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</p>
						</div>
					</div>
					<div class="col-6  col-md-3">
						<div class="newIn__item">
							<div class="newIn__info">
								<img class="img-fluid" src="template/img/polo1.jpg" alt="">
								<div class="newIn__overlay"></div>
								<div class="newIn__detail">
									<i class="fa fa-play"></i> <a href="<c:url value='trang-chu/danh-sach?id=20023'/>">MORE INFORMATION</a>
									<p>Release: 7 Mar, 2020</p>
								</div>
							</div>
							<p class="newIn__item__title">The last post</p>
							<p class="newIn__item__rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</p>
						</div>
					</div>
					<div class="col-6  col-md-3">
						<div class="newIn__item">
							<div class="newIn__info">
								<img class="img-fluid" src="template/img/aodai2.jpg" alt="">
								<div class="newIn__overlay"></div>
								<div class="newIn__detail">
									<i class="fa fa-play"></i> <a href="<c:url value='trang-chu/danh-sach?id=20028'/>">MORE INFORMATION</a>
									<p>Release: 7 Mar, 2020</p>
								</div>
							</div>
							<p class="newIn__item__title">The last post</p>
							<p class="newIn__item__rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</p>
						</div>
					</div>
					<div class="col-6  col-md-3">
						<div class="newIn__item">
							<div class="newIn__info">
								<img class="img-fluid" src="template/img/thethao2.jpg" alt="">
								<div class="newIn__overlay"></div>
								<div class="newIn__detail">
									<i class="fa fa-play"></i> <a href="<c:url value='trang-chu/danh-sach?id=20030'/>">MORE INFORMATION</a>
									<p>Release: 7 Mar, 2020</p>
								</div>
							</div>
							<p class="newIn__item__title">The last post</p>
							<p class="newIn__item__rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<section class="contact">
		<div class="container">
		<h2>Customer Reviews</h2>
			<div class="contact__form">
				<form>
					<input type="text" placeholder="Name"> <input type="text"
						placeholder="Last Name"> <input type="email"
						placeholder="Email"> <input type="tel" placeholder="Phone">
					<textarea placeholder="Message" id="" cols="30" rows="10"></textarea>
					<button class="btn btn-danger" style="margin-bottom:10px">Send</button>
				</form>
			</div>
		</div>
	</section>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>