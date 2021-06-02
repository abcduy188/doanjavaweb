<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>
<head>


<title>Hello, world!</title>
</head>
<body>
	<section class="showTime">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist"
				style="padding-top: 100px;">
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="mon-tab" data-toggle="tab" href="#mon" role="tab"
					aria-controls="home" aria-selected="true">Quần Jogger</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="tue-tab" data-toggle="tab" href="#tue" role="tab"
					aria-controls="home" aria-selected="true">Quần Ka-Ki</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link "
					id="wed-tab" data-toggle="tab" href="#wed" role="tab"
					aria-controls="home" aria-selected="true">Quần Short</a></li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="mon" role="tabpanel"
					aria-labelledby="mon-tab">
					<c:forEach var="item" items="${model.listResult}">
						<c:if test="${item.categoryCode=='quan-jogger'}">
							<div class="row showTimes__movie my-4">
								<div class="col-2">
									<c:url var="updateNewURL" value="/trang-chu/danh-sach">
										<c:param name="id" value="${item.id}" />
									</c:url>
									<a href='${updateNewURL}'><img class="img-fluid" alt="hình"
										src="../template/assets/img/thumbnail/${model.hinhanh}"></a>
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
						<c:if test="${item.categoryCode=='quan-kaki'}">
							<div class="row showTimes__movie my-4">
								<div class="col-2">
									<c:url var="updateNewURL" value="/trang-chu/danh-sach">
										<c:param name="id" value="${item.id}" />
									</c:url>
									<a href='${updateNewURL}'><img class="img-fluid" alt="hình"
										src="../template/assets/img/thumbnail/${model.hinhanh}"></a>
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
						<c:if test="${item.categoryCode=='quan-short'}">
							<div class="row showTimes__movie my-4">
								<div class="col-2">
									<c:url var="updateNewURL" value="/trang-chu/danh-sach">
										<c:param name="id" value="${item.id}" />
									</c:url>
									<a href='${updateNewURL}'><img class="img-fluid" alt="hình"
										src="../template/assets/img/thumbnail/${model.hinhanh}"></a>
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
				<div class="tab-pane fade" id="fri" role="tabpanel"
					aria-labelledby="fri-tab">
					<c:forEach var="item" items="${model.listResult}">
						<c:if test="${item.categoryCode=='ao-dai-tay'}">
							<div class="row showTimes__movie my-4">
								<div class="col-2">
									<c:url var="updateNewURL" value="/trang-chu/danh-sach">
										<c:param name="id" value="${item.id}" />
									</c:url>
									<a href='${updateNewURL}'><img class="img-fluid" alt="hình"
										src="../template/img/${item.hinhanh}"></a>
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
										src="../template/img/${item.hinhanh}"></a>
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
