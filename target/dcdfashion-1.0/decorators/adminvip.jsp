<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>DCD Fashion</title>
<!-- loader-->
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="<c:url value='/template/adminvip/assets/css/pace.min.css'/>"
	rel="stylesheet" />
<script src="<c:url value='/template/adminvip/assets/js/pace.min.js'/>"></script>
<!--favicon-->
<link rel="icon"
	href="<c:url value='/template/adminvip/assets/images/edit.ico'/>"
	type="image/x-icon'>">
<!-- Vector CSS -->
<link
	href="<c:url value='/template/adminvip/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css'/>"
	rel="stylesheet" />
<!-- simplebar CSS-->
<link
	href="<c:url value='/template/adminvip/assets/plugins/simplebar/css/simplebar.css'/>"
	rel="stylesheet" />
<!-- Bootstrap core CSS-->
<link
	href="<c:url value='/template/adminvip/assets/css/bootstrap.min.css'/>"
	rel="stylesheet" />
<!-- animate CSS-->
<link href="<c:url value='/template/adminvip/assets/css/animate.css'/>"
	rel="stylesheet" type="text/css" />
<!-- Icons CSS-->
<link href="<c:url value='/template/adminvip/assets/css/icons.css'/>"
	rel="stylesheet" type="text/css" />
<!-- Sidebar CSS-->
<link
	href="<c:url value='/template/adminvip/assets/css/sidebar-menu.css'/>"
	rel="stylesheet" />
<!-- Custom Style-->
<link
	href="<c:url value='/template/adminvip/assets/css/app-style.css'/>"
	rel="stylesheet" />
<!-- ckeditor -->
<script src="https://cdn.ckeditor.com/4.16.1/full-all/ckeditor.js"></script>
<!-- sweetalert delete -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body class="bg-theme bg-theme5">
	<div id="wrapper">
		<!-- header -->
		<%@ include file="/common/adminvip/header.jsp"%>
		<!-- header -->
		<%@ include file="/common/adminvip/menu.jsp"%>


		<dec:body />

		<!-- footer -->
		<%@ include file="/common/adminvip/footer.jsp"%>
		<!-- footer -->
		<!-- Bootstrap core JavaScript-->
	</div>
	<script
		src="<c:url value='/template/adminvip/assets/js/jquery.min.js'/>"></script>
	<script
		src="<c:url value='/template/adminvip/assets/js/popper.min.js'/>"></script>
	<script
		src="<c:url value='/template/adminvip/assets/js/bootstrap.min.js'/>"></script>

	<!-- simplebar js -->
	<script
		src="<c:url value='/template/adminvip/assets/plugins/simplebar/js/simplebar.js'/>"></script>
	<!-- sidebar-menu js -->
	<script
		src="<c:url value='/template/adminvip/assets/js/sidebar-menu.js'/>"></script>
	<!-- loader scripts -->
	<script
		src="<c:url value='/template/adminvip/assets/js/jquery.loading-indicator.js'/>"></script>
	<!-- Custom scripts -->
	<script
		src="<c:url value='/template/adminvip/assets/js/app-script.js'/>"></script>
	<!-- Chart js -->

	<script
		src="<c:url value='/template/adminvip/assets/plugins/Chart.js/Chart.min.js'/>"></script>

	<!-- Index js -->
	<script src="<c:url value='/template/adminvip/assets/js/index.js'/>"></script>
</body>

</html>