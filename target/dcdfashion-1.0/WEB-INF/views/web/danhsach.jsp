<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
	<section class="newIn">
		<div class="container">
			<h1 class="newIn__title p-top:100px " style="padding-top: 100px;">NEW
				IN</h1>
			<div class="d-flex">
				<div class="row">
					<div class="col-6 col-md-3">
						<h2 style="color: blue; background-color: yellow">
							<b><i>Áo Thun</i></b>
						</h2>
						<div class="col-sm-3">

							<p>${model.tensp}</p>
						</div>
						<div class="col-sm-3">
						<img src="<c:url value='/template/img/${model.hinhanh}'/>">
						</div>
						<div class="row" style="text-align: center"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>