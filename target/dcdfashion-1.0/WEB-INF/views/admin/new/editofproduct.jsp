<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="/quan-tri/danh-sach-san-pham" />
<c:url var="editNewURL" value="/quan-tri/bai-viet/chinh-sua" />
<c:url var="newAPI" value="/api/product" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-theme bg-theme5">
	<div class="clearfix"></div>

	<div class="content-wrapper">
		<div class="container-fluid">
			<c:if test="${not empty message}">
				<div class="alert alert-${alert}">${message}</div>
			</c:if>
			<div class="col-lg-6">
				<div class="card">
					<div class="card-body">
						<div class="card-title">Vertical Form</div>
						<hr>
						<form:form id="formSubmit" modelAttribute="model">
							<div class="form-group">
								<label for="categoryCode"
									class="col-sm-3 control-label no-padding-right">Thể
									loại:</label>
								<div class="col-sm-9">
									<form:select path="categoryCode" id="categoryCode"
										style="background: white;">
										<form:option style="background: white;" value=""
											label="-- Chọn Thể loại --" />
										<form:options style="background: white;" items="${categories}" />

									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label for="input-1">Tên sản phẩm</label>
								<form:input path="tensp" class="form-control"
									placeholder="Nhập tên sản phẩm" />
							</div>
							<div class="form-group">
								<label for="input-2">Hình ảnh</label> 
								<form:input path="hinhanh" type="file" class="form-control" />
							</div>
							<div class="form-group">
								<label for="input-3">Mô tả</label>
								<form:textarea path="mota" rows="" cols=""
									style="height: 120px;width: 411px" class="form-control"
									placeholder="Nhập mô tả sản phẩm" />

							</div>
							<div class="form-group">
								<label for="input-4">Nội dung</label>
								<form:textarea path="content" rows="" cols=""
									style="height: 120px;width: 411px" class="form-control"
									placeholder="Nhập nội dung sản phẩm" />
							</div>
							<form:hidden path="id" id="newId" />
							<div class="form-group">
								<c:if test="${not empty model.id}">
									<button type="button" class="btn btn-light px-5"
										id="btnAddOrUpdateNew">
										<i class="icon-lock"></i> Cập nhật sản phẩm
									</button>
								</c:if>
								<c:if test="${empty model.id}">
									<button type="button" class="btn btn-light px-5"
										id="btnAddOrUpdateNew">
										<i class="icon-note"></i> Thêm sản phẩm
									</button>
								</c:if>
								&nbsp; &nbsp; &nbsp;
								<button type="reset" class="btn btn-light px-5">
									<i class="icon-trash"></i> Xóa
								</button>
								<a href="<c:url value='/quan-tri/danh-sach-san-pham'/>"
									class="ace-icon fa fa-undo bigger-110"> Trở về danh sách</a>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var editormota = '';
		var editorcontent = '';
		$(document).ready(function() {
			editorcontent = CKEDITOR.replace('content');
			editormota = CKEDITOR.replace('mota');
		});

		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var dataArray = {};

			var formData = $('#formSubmit').serializeArray();
			var files = $('#hinhanh')[0].files[0];
			if (files != undefined) {
				var reader = new FileReader();
				reader.onload = function(e) {
					dataArray["base64"] = (e.target.result).split(",")[1];
					dataArray["hinhanh"] = files.name;
					formData.push({
						name : "base64",
						value : dataArray["base64"]
					});
					formData.push({
						name : "hinhanh",
						value : dataArray["hinhanh"]
					});
					$.each(formData, function(i, v) {
						data["" + v.name + ""] = v.value;
					});
					data["content"] = editorcontent.getData();
					data["mota"] = editormota.getData();
					var id = $('#newId').val();
					if (id == "") {
						addNew(data);
					} else {
						updateNew(data);
					}
				};
				reader.readAsDataURL(files);
			}

		});

		function addNew(data) {
			$.ajax({
				url : '${newAPI}',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					window.location.href = "${newURL}?&message=insert_success";
				},
				error : function(error) {
					window.location.href = "${newURL}?&message=error_system";
				}
			});
		}

		function updateNew(data) {
			$.ajax({
				url : '${newAPI}',
				type : 'PUT',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					window.location.href = "${newURL}?&message=update_success";
				},
				error : function(error) {
					window.location.href = "${newURL}?&message=error_system";
				}
			});
		}
	</script>
</body>
</html>