<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="vn.name.dcd.utils.SecurityUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body class="bg-theme bg-theme5">
	<div id="wrapper">
		<header class="topbar-nav"> <nav
			class="navbar navbar-expand fixed-top">
		<ul class="navbar-nav mr-auto align-items-center">
			<li class="nav-item"><a class="nav-link toggle-menu"
				href="javascript:void();"> <i class="icon-menu menu-icon"></i>
			</a></li>
			<li class="nav-item">
				<form class="search-bar"
					action="<c:url value='/quan-tri/danh-sach-san-pham'/>">
					<input type="text" class="form-control"
						placeholder="Enter keywords" name="keyword" id="keyword"
						value="${keyword}" required />
					<button type="submit" class="btn btn-light px-5" value="Search">
						<i class="icon-magnifier"></i>
					</button>
					<button type="submit" class="btn btn-light px-5" value="Clear"
						id="btnClear" onclick="clearSearch()">
						<i class="zmdi zmdi-multiplication"></i>Cancel
					</button>
				</form>
			</li>

		</ul>

		<ul class="navbar-nav align-items-center right-nav-link">
			<li class="nav-item dropdown-lg"><a
				class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect"
				data-toggle="dropdown" href="<c:url value='/trang-chu'/>"> <i
					class="fa fa-envelope-open-o"></i></a></li>
			<li class="nav-item dropdown-lg"><a
				class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect"
				data-toggle="dropdown" href="javascript:void();"> <i
					class="fa fa-bell-o"></i></a></li>
			<li class="nav-item language"><a
				class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect"
				data-toggle="dropdown" href="javascript:void();"><i
					class="fa fa-flag"></i></a>
				<ul class="dropdown-menu dropdown-menu-right">
					<li class="dropdown-item"><i
						class="flag-icon flag-icon-gb mr-2"></i> English</li>
					<li class="dropdown-item"><i
						class="flag-icon flag-icon-fr mr-2"></i> French</li>
					<li class="dropdown-item"><i
						class="flag-icon flag-icon-cn mr-2"></i> Chinese</li>
					<li class="dropdown-item"><i
						class="flag-icon flag-icon-de mr-2"></i> German</li>
				</ul></li>
			<li class="nav-item"><a
				class="nav-link dropdown-toggle dropdown-toggle-nocaret"
				data-toggle="dropdown" href="#"> <c:if
						test="${SecurityUtils.getPrincipal().getUsername()=='dyu'}">
						<span class="user-profile"><img
							src="<c:url value='/template/adminvip/assets/images/avtduy.jpg'/>"
							class="img-circle" alt="user avatar"></span>
					</c:if> <c:if
						test="${SecurityUtils.getPrincipal().getUsername()=='cuong'}">
						<span class="user-profile"><img
							src="<c:url value='/template/adminvip/assets/images/avtcuong.jpg'/>"
							class="img-circle" alt="user avatar"></span>
					</c:if> <c:if
						test="${SecurityUtils.getPrincipal().getUsername()=='duong'}">
						<span class="user-profile"><img
							src="<c:url value='/template/adminvip/assets/images/avtduong.png'/>"
							class="img-circle" alt="user avatar"></span>
					</c:if>
			</a>
				<ul class="dropdown-menu dropdown-menu-right">
					<li class="dropdown-item user-details"><a
						href="javaScript:void();">
							<div class="media">
								<c:if
									test="${SecurityUtils.getPrincipal().getUsername()=='dyu'}">
									<div class="avatar">
										<img class="align-self-start mr-3"
											src="<c:url value='/template/adminvip/assets/images/avtduy.jpg'/>"
											alt="user avatar">
									</div>
								</c:if>
								<c:if
									test="${SecurityUtils.getPrincipal().getUsername()=='cuong'}">
									<div class="avatar">
										<img class="align-self-start mr-3"
											src="<c:url value='/template/adminvip/assets/images/avtcuong.jpg'/>"
											alt="user avatar">
									</div>
								</c:if>
								<c:if
									test="${SecurityUtils.getPrincipal().getUsername()=='duong'}">
									<div class="avatar">
										<img class="align-self-start mr-3"
											src="<c:url value='/template/adminvip/assets/images/avtduong.png'/>"
											alt="user avatar">
									</div>
								</c:if>
								<div class="media-body">
									<h6 class="mt-2 user-title"><%=SecurityUtils.getPrincipal().getFullname()%></h6>
									<p class="user-subtitle"><%=SecurityUtils.getPrincipal().getUsername()%></p>
								</div>
							</div>
					</a></li>
					<li class="dropdown-item"><a href="<c:url value='/thoat'/>"><i
							class="icon-power mr-2"></i> Logout </a></li>

				</ul></li>
		</ul>
		</nav> </header>
	</div>
	<script type="text/javascript">
		function clearSearch() {
			window.location.href = "${newURL}";
		}

		$("#checkAll").change(function() {
			$(".checkitem").prop("checked", $(this).prop("checked"))
		});
		$(".checkitem").change(function() {
			if ($(this).prop("checked") == false) {
				$("#checkAll").prop("checked", false)
			}
			if ($(".checkitem:checked").length == $(".checkitem").length) {
				$("#checkAll").prop("checked", true)
			}
		});
	</script>
</body>
</html>