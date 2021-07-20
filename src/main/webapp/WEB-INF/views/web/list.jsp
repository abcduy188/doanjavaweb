<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="/trang-chu" />
<!DOCTYPE html>

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
<link rel="stylesheet"
	href="<c:url value='/template/web/css/index.css'/>">
<title>Hello, world!</title>
</head>
<body>
	<section class="showTime">
		<div class="container">
			<form class="card card-sm" action="<c:url value='/trang-chu/list'/>">
				<div class="card-body row no-gutters align-items-center">
					<div class="col-auto">
						<i class="fas fa-search h4 text-body"></i>
					</div>
					<!--end of col-->
					<div class="col">
						<input
							class="form-control form-control-lg form-control-borderless"
							type="text" name="keyword" id="keyword" placeholder="Search topics or keywords" value="${keyword}" required />
					</div>
					<!--end of col-->
					<div class="col-auto">
						&nbsp;<button class="btn btn-lg btn-success" type="submit">Search</button> &nbsp;
						<button class="btn btn-lg btn-success" type="button" id="btnClear" onclick="clearSearch()">Quay lại</button>
					</div>
					<!--end of col-->
				</div>
			</form>
			
					<c:forEach var="item" items="${model.listResult}">
						
							<div class="row showTimes__movie my-4">
								<div class="col-2">
									<c:url var="updateNewURL" value="/trang-chu/danh-sach">
										<c:param name="id" value="${item.id}" />
									</c:url>
									<a href='${updateNewURL}'><img class="img-fluid" alt="hình"
										src="../template/assets/img/thumbnail/${item.hinhanh}"></a>
								</div>
								<div class="col-10">
									<div class="showTimes__detail">
										<span>${item.tensp}</span>
										<h3 class="display-4">Sản Phẩm Hot</h3>
										<p>Áo Đẹp Chất Lượng</p>
										<a href='${updateNewURL}' class="d-block mb-4"> CHI TIẾT <i
											class="fa fa-angle-right"></i>
										</a>
										<div
											class="showTimes__list d-flex justify-content-between align-items-center">
											<div>
												<i class="fa fa-clock"></i> <span class="spnView mr-2">SIZE</span>
												<button class="btn mr-2">S</button>
												<button class="btn mr-2">M</button>
												<button class="btn mr-2">L</button>
												<button class="btn mr-2">XL</button>
											</div>
											<p class="showTimes__leght">
												105 MINS <span
													class="d-inline-block bg-dark text-white font-weight-bold ml-2">15</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						
					</c:forEach>
				</div>
				
	</section>
	<script type="text/javascript">
		function clearSearch() {
			window.location.href = "${newURL}";
		}
	</script>
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
