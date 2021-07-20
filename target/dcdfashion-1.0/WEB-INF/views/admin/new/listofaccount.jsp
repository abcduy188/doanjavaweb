<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api/product" />
<c:url var="newURL" value="/quan-tri/danh-sach-san-pham" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vn.name.dcd.utils.SecurityUtils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="clearfix"></div>

	<div class="content-wrapper">
		<div class="container-fluid">

			<!--Start Dashboard Content-->
			<div class="row mt-3">
				<c:if test="${SecurityUtils.getPrincipal().getUsername()=='dyu'}">
					<div class="col-lg-4">
						<div class="card profile-card-2">
							<div class="card-img-block">
								<img class="img-fluid"
									src="<c:url value='/template/adminvip/assets/images/biaduy.jpg'/>"
									alt="Card image cap">
							</div>
							<div class="card-body pt-5">
								<img
									src="<c:url value='/template/adminvip/assets/images/avtduy.jpg'/>"
									alt="profile-image" class="profile">
								<h5 class="card-title">Trần Khánh Duy</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<div class="icon-block">
									<a href="https://www.facebook.com/ODuyyy/"><i
										class="fa fa-facebook bg-facebook text-white"></i></a> <a
										href="javascript:void();"> <i
										class="fa fa-instagram bg-instagram text-white"></i></a> <a
										href="javascript:void();"> <i
										class="fa fa-google-plus bg-google-plus text-white"></i></a>
								</div>
							</div>
						</div>

					</div>
				</c:if>
				<c:if test="${SecurityUtils.getPrincipal().getUsername()=='cuong'}">
					<div class="col-lg-4">
						<div class="card profile-card-2">
							<div class="card-img-block">
								<img class="img-fluid"
									src="<c:url value='/template/adminvip/assets/images/biacuong.jpg'/>"
									alt="Card image cap">
							</div>
							<div class="card-body pt-5">
								<img
									src="<c:url value='/template/adminvip/assets/images/avtcuong.jpg'/>"
									alt="profile-image" class="profile">
								<h5 class="card-title">Mai Xuân Cường</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<div class="icon-block">
									<a href="https://www.facebook.com/cuong.euro2910"><i
										class="fa fa-facebook bg-facebook text-white"></i></a> <a
										href="javascript:void();"> <i
										class="fa fa-instagram bg-instagram text-white"></i></a> <a
										href="javascript:void();"> <i
										class="fa fa-google-plus bg-google-plus text-white"></i></a>
								</div>
							</div>
						</div>

					</div>
				</c:if>
				<c:if test="${SecurityUtils.getPrincipal().getUsername()=='duong'}">
					<div class="col-lg-4">
						<div class="card profile-card-2">
							<div class="card-img-block">
								<img class="img-fluid"
									src="<c:url value='/template/adminvip/assets/images/biaduong.jpg'/>"
									alt="Card image cap">
							</div>
							<div class="card-body pt-5">
								<img
									src="<c:url value='/template/adminvip/assets/images/avtduong.png'/>"
									alt="profile-image" class="profile">
								<h5 class="card-title">Quàng Văn Dương</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<div class="icon-block">
									<a href="https://www.facebook.com/duonghoangIT"><i
										class="fa fa-facebook bg-facebook text-white"></i></a> <a
										href="javascript:void();"> <i
										class="fa fa-instagram bg-instagram text-white"></i></a> <a
										href="javascript:void();"> <i
										class="fa fa-google-plus bg-google-plus text-white"></i></a>
								</div>
							</div>
						</div>

					</div>
				</c:if>
				<div class="card-body border-top border-light">
					<div class="media align-items-center">
						<div>
							<img src="<c:url value='/template/adminvip/assets/images/timeline/html5.svg'/>" class="skill-img"
								alt="skill img">
						</div>
						<div class="media-body text-left ml-3">
							<div class="progress-wrapper">
								<p>
									HTML5 <span class="float-right">65%</span>
								</p>
								<div class="progress" style="height: 5px;">
									<div class="progress-bar" style="width: 65%"></div>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="media align-items-center">
						<div>
							<img src="<c:url value='/template/adminvip/assets/images/timeline/bootstrap-4.svg'/>"
								class="skill-img" alt="skill img">
						</div>
						<div class="media-body text-left ml-3">
							<div class="progress-wrapper">
								<p>
									Bootstrap 4 <span class="float-right">50%</span>
								</p>
								<div class="progress" style="height: 5px;">
									<div class="progress-bar" style="width: 50%"></div>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="media align-items-center">
						<div>
							<img src="<c:url value='/template/adminvip/assets/images/timeline/angular-icon.svg'/>"
								class="skill-img" alt="skill img">
						</div>
						<div class="media-body text-left ml-3">
							<div class="progress-wrapper">
								<p>
									AngularJS <span class="float-right">70%</span>
								</p>
								<div class="progress" style="height: 5px;">
									<div class="progress-bar" style="width: 70%"></div>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="media align-items-center">
						<div>
							<img src="<c:url value='/template/adminvip/assets/images/timeline/react.svg'/>" class="skill-img"
								alt="skill img">
						</div>
						<div class="media-body text-left ml-3">
							<div class="progress-wrapper">
								<p>
									React JS <span class="float-right">35%</span>
								</p>
								<div class="progress" style="height: 5px;">
									<div class="progress-bar" style="width: 35%"></div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!--End Row-->
			<!--End Dashboard Content-->

			<!--start overlay-->
			<div class="overlay toggle-menu"></div>
			<!--end overlay-->

		</div>
	</div>
	<!--start color switcher-->
	<div class="right-sidebar">
		<div class="switcher-icon">
			<i class="zmdi zmdi-settings zmdi-hc-spin"></i>
		</div>
		<div class="right-sidebar-content">

			<p class="mb-0">Gaussion Texture</p>
			<hr>

			<ul class="switcher">
				<li id="theme1"></li>
				<li id="theme2"></li>
				<li id="theme3"></li>
				<li id="theme4"></li>
				<li id="theme5"></li>
				<li id="theme6"></li>
			</ul>

			<p class="mb-0">Gradient Background</p>
			<hr>

			<ul class="switcher">
				<li id="theme7"></li>
				<li id="theme8"></li>
				<li id="theme9"></li>
				<li id="theme10"></li>
				<li id="theme11"></li>
				<li id="theme12"></li>
				<li id="theme13"></li>
				<li id="theme14"></li>
				<li id="theme15"></li>
			</ul>

		</div>
	</div>
	<!--end color switcher-->
</body>
</html>