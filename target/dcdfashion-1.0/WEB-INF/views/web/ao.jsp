<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="/trang-chu/trang-ao" />
<!DOCTYPE html>

<html lang="en">
<head>

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
							type="text" name="keyword" id="keyword" placeholder="Tìm kiếm theo tên sản phẩm..." value="${keyword}" required />
					</div>
					<!--end of col-->
					<div class="col-auto">
						&nbsp;
						<button class="btn btn-lg btn-success" type="submit"
							style="background: linear-gradient(-135deg, #c850c0, #4158d0);">Search</button>
						&nbsp;
						<button class="btn btn-lg btn-success" style="background:  linear-gradient(-135deg, #c850c0, #4158d0);" type="button" id="btnClear" onclick="clearSearch()">Quay lại</button>
					</div>
					<!--end of col-->
				</div>
			</form>
			<ul class="nav nav-tabs" id="myTab" role="tablist"
				style="padding-top: 100px;">
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="mon-tab" data-toggle="tab" href="#mon" role="tab"
					aria-controls="home" aria-selected="true">Áo sơ mi</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="tue-tab" data-toggle="tab" href="#tue" role="tab"
					aria-controls="home" aria-selected="true">Áo Po-Lo</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link "
					id="wed-tab" data-toggle="tab" href="#wed" role="tab"
					aria-controls="home" aria-selected="true">Áo Cotton compact
						ngắn tay</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link "
					id="thu-tab" data-toggle="tab" href="#thu" role="tab"
					aria-controls="home" aria-selected="true">Áo Cotton compact dài
						tay</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link "
					id="sat-tab" data-toggle="tab" href="#sat" role="tab"
					aria-controls="home" aria-selected="true">Áo Thể Thao Nam</a></li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="mon" role="tabpanel"
					aria-labelledby="mon-tab">
					<c:forEach var="item" items="${model.listResult}">
						<c:if test="${item.categoryCode=='ao-so-mi'}">
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
										<h3 class="display-4">It's over</h3>
										<p>European mercenaries searching for black powder become
											embroiled in the defense of It's over of China against a
											horde of monstrous creatures.</p>
										<a href="#" class="d-block mb-4"> FULL SYNOPSIS <i
											class="fa fa-angle-right"></i>
										</a>
										<div
											class="showTimes__list d-flex justify-content-between align-items-center">
											<div>
												<i class="fa fa-clock"></i> <span class="spnView mr-2">VIEWING
													TIMES</span>
												<button class="btn mr-2">14:45</button>
												<button class="btn mr-2">18:30</button>
												<button class="btn mr-2">20:30</button>
												<button class="btn mr-2">24:45</button>
											</div>
											<p class="showTimes__leght">
												105 MINS <span
													class="d-inline-block bg-dark text-white font-weight-bold ml-2">15</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="tab-pane fade" id="tue" role="tabpanel"
					aria-labelledby="tue-tab">
					<c:forEach var="item" items="${model.listResult}">
						<c:if test="${item.categoryCode=='ao-po-lo'}">
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
										<h3 class="display-4">It's over</h3>
										<p>European mercenaries searching for black powder become
											embroiled in the defense of It's over of China against a
											horde of monstrous creatures.</p>
										<a href="#" class="d-block mb-4"> FULL SYNOPSIS <i
											class="fa fa-angle-right"></i>
										</a>
										<div
											class="showTimes__list d-flex justify-content-between align-items-center">
											<div>
												<i class="fa fa-clock"></i> <span class="spnView mr-2">VIEWING
													TIMES</span>
												<button class="btn mr-2">14:45</button>
												<button class="btn mr-2">18:30</button>
												<button class="btn mr-2">20:30</button>
												<button class="btn mr-2">24:45</button>
											</div>
											<p class="showTimes__leght">
												105 MINS <span
													class="d-inline-block bg-dark text-white font-weight-bold ml-2">15</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="tab-pane fade" id="wed" role="tabpanel"
					aria-labelledby="wed-tab">
					<c:forEach var="item" items="${model.listResult}">
						<c:if test="${item.categoryCode=='ao-cotton-ngan-tay'}">
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
										<h3 class="display-4">It's over</h3>
										<p>European mercenaries searching for black powder become
											embroiled in the defense of It's over of China against a
											horde of monstrous creatures.</p>
										<a href="#" class="d-block mb-4"> FULL SYNOPSIS <i
											class="fa fa-angle-right"></i>
										</a>
										<div
											class="showTimes__list d-flex justify-content-between align-items-center">
											<div>
												<i class="fa fa-clock"></i> <span class="spnView mr-2">VIEWING
													TIMES</span>
												<button class="btn mr-2">14:45</button>
												<button class="btn mr-2">18:30</button>
												<button class="btn mr-2">20:30</button>
												<button class="btn mr-2">24:45</button>
											</div>
											<p class="showTimes__leght">
												105 MINS <span
													class="d-inline-block bg-dark text-white font-weight-bold ml-2">15</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="tab-pane fade" id="thu" role="tabpanel"
					aria-labelledby="thu-tab">
					<c:forEach var="item" items="${model.listResult}">
						<c:if test="${item.categoryCode=='ao-cotton-dai-tay'}">
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
										<h3 class="display-4">It's over</h3>
										<p>European mercenaries searching for black powder become
											embroiled in the defense of It's over of China against a
											horde of monstrous creatures.</p>
										<a href="#" class="d-block mb-4"> FULL SYNOPSIS <i
											class="fa fa-angle-right"></i>
										</a>
										<div
											class="showTimes__list d-flex justify-content-between align-items-center">
											<div>
												<i class="fa fa-clock"></i> <span class="spnView mr-2">VIEWING
													TIMES</span>
												<button class="btn mr-2">14:45</button>
												<button class="btn mr-2">18:30</button>
												<button class="btn mr-2">20:30</button>
												<button class="btn mr-2">24:45</button>
											</div>
											<p class="showTimes__leght">
												105 MINS <span
													class="d-inline-block bg-dark text-white font-weight-bold ml-2">15</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="tab-pane fade" id="sat" role="tabpanel"
					aria-labelledby="sat-tab">
					<c:forEach var="item" items="${model.listResult}">
						<c:if test="${item.categoryCode=='ao-the-thao'}">
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
										<h3 class="display-4">It's over</h3>
										<p>European mercenaries searching for black powder become
											embroiled in the defense of It's over of China against a
											horde of monstrous creatures.</p>
										<a href="#" class="d-block mb-4"> FULL SYNOPSIS <i
											class="fa fa-angle-right"></i>
										</a>
										<div
											class="showTimes__list d-flex justify-content-between align-items-center">
											<div>
												<i class="fa fa-clock"></i> <span class="spnView mr-2">VIEWING
													TIMES</span>
												<button class="btn mr-2">14:45</button>
												<button class="btn mr-2">18:30</button>
												<button class="btn mr-2">20:30</button>
												<button class="btn mr-2">24:45</button>
											</div>
											<p class="showTimes__leght">
												105 MINS <span
													class="d-inline-block bg-dark text-white font-weight-bold ml-2">15</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
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
