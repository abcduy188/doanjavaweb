<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api/product" />
<c:url var="newURL" value="/quan-tri/danh-sach-san-pham" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<form action="<c:url value='/quan-tri/danh-sach-san-pham'/>"
				id="formSubmit" method="get">
				<div class="row">
					<div class="col-12 col-lg-12">
						<c:if test="${not empty message}">
							<div class="alert alert-${alert}">${message}</div>
						</c:if>
						<div class="card">
							<div class="card-header">
								Danh sách sản phẩm
								<div class="card-action">
									<div class="dropdown">
										<a href="javascript:void();"
											class="dropdown-toggle dropdown-toggle-nocaret"
											data-toggle="dropdown"> <i class="icon-options"></i>
										</a>
										<div class="dropdown-menu dropdown-menu-right">
											<c:url var="createNewURL"
												value="/quan-tri/san-pham/chinh-sua" />
											<a class="dropdown-item" href='${createNewURL}'>Thêm sản
												phẩm</a> <a class="dropdown-item" id="btnDelete" type="button"
												onclick="warningBeforeDelete()"> Xóa sản phẩm </a>
										</div>
									</div>
								</div>
							</div>
							<div class="table-responsive">
								<table
									class="table align-items-center table-flush table-borderless">
									<thead>
										<tr>
											<th><input type="checkbox" id="checkAll"></th>
											<th>Tên sản phẩm</th>
											<th>Hình ảnh</th>
											<th>Mã danh mục</th>
											<th>Tác vụ</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${model.listResult}">

											<tr>
												<td><input type="checkbox" id="checkbox_${item.id}"
													class="checkitem" value="${item.id}"></td>
												<td>${item.tensp}</td>

												<td><img
													src="<c:url value='/template/assets/img/thumbnail/${item.hinhanh}'/>"
													alt="${item.hinhanh}" height="20px" width="20px"></td>
												<td>${item.categoryCode}</td>
												<td><c:url var="updateNewURL"
														value="/quan-tri/san-pham/chinh-sua">
														<c:param name="id" value="${item.id}" />
													</c:url> <a class="btn btn-sm btn-primary btn-edit"
													data-toggle="tooltip" title="Cập nhật bài viết"
													href='${updateNewURL}'><i class="fa fa-pencil-square-o"
														aria-hidden="true"></i> </a></td>
											</tr>

										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</form>
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

		function warningBeforeDelete() {
			swal({
				title : "Xóa sản phẩm?",
				text : "Bạn có chắc muốn xóa sản phẩm?",
				icon : "warning",
				buttons : true,
				dangerMode : true,
			}).then(
					function(isConfirmed) {
						if (isConfirmed) {
							var ids = $('tbody input[type=checkbox]:checked')
									.map(function() {
										return $(this).val();
									}).get();
							deleteProduct(ids);
						} else {
							swal("Đã hủy thao tác!");
						}
					});

		}
		function deleteProduct(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'DELETE',
				contentType : 'application/json',
				data : JSON.stringify(data),
				success : function(result) {
					window.location.href = "${newURL}?&message=delete_success";
				},
				error : function(error) {
					window.location.href = "${newURL}?&message=error_system";
				}
			});
		}
	</script>
</body>
</html>