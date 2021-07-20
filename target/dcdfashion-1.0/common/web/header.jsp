
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="dec"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ page import="vn.name.dcd.utils.SecurityUtils"%>
<div class="container">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> <img height="auto" width="250px"
			src="<c:url value='/template/img/logodc1.png'/>" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#movieNavbar" aria-controls="navbarSupportedContent"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="movieNavbar">
			<security:authorize access="isAnonymous()">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/trang-chu/trang-ao'/>">Áo</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/trang-chu/trang-quan'/>">Quần</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/dang-nhap'/>">Đăng nhập</a></li>
				</ul>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/quan-tri/trang-chu'/>">Welcome <%=SecurityUtils.getPrincipal().getFullname()%></a></li>
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/trang-chu/trang-ao'/>">Áo</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/trang-chu/trang-quan'/>">Quần</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/thoat'/>">Thoát</a></li>
				</ul>
			</security:authorize>
		</div>
	</nav>
</div>

