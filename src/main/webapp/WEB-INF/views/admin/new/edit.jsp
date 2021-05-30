<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="newURL" value="//quan-tri/danh-sach-san-pham" />
<c:url var="editNewURL" value="/quan-tri/bai-viet/chinh-sua" />
<c:url var="newAPI" value="/api/product" />
<html>
<head>
<title>Chỉnh sửa bài viết</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
					</li>

					<li><a href="#">Forms</a></li>
					<li class="active">Form Elements</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<c:if test="${not empty message}">
							<div class="alert alert-${alert}">${message}</div>
						</c:if>
						<form:form class="form-horizontal" role="form" id="formSubmit"
							modelAttribute="model" enctype="multipart/form-data">
							<div class="form-group">
								<label for="categoryCode"
									class="col-sm-3 control-label no-padding-right">Thể
									loại:</label>
								<div class="col-sm-9">
									<form:select path="categoryCode" id="categoryCode">
										<form:option value="" label="-- Chọn Thể loại --" />
										<form:options items="${categories}" />

									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1">Tên Sản phẩm</label>
								<div class="col-sm-9">
									<form:input path="tensp" cssClass="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1">Hình Ảnh</label>
								<div class="col-sm-9">
									<form:input path="hinhanh" type="file"
										class="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label for="content"
									class="col-sm-3 control-label no-padding-right">Mô tả</label>
								<div class="col-sm-9">
									<form:textarea path="mota" rows="" cols="" style="height: 120px;width: 411px"
										cssClass="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="content"
									class="col-sm-3 control-label no-padding-right">Nội
									dung:</label>
								<div class="col-sm-9">
									<form:textarea path="content"  rows="" cols="" style="height: 120px;width: 411px"
										cssClass="form-control" id="content" />
								</div>
							</div>
							<form:hidden path="id" id="newId" />
							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<c:if test="${not empty model.id}">
										<button class="btn btn-info" type="button"
											id="btnAddOrUpdateNew">
											<i class="ace-icon fa fa-check bigger-110"></i> Cập nhật bài
											viết
										</button>
									</c:if>
									<c:if test="${empty model.id}">
										<button class="btn btn-info" type="button"
											id="btnAddOrUpdateNew">
											<i class="ace-icon fa fa-check bigger-110"></i> Thêm bài viết
										</button>
									</c:if>

									&nbsp; &nbsp; &nbsp;
									<button class="btn" type="reset" >
										<i class="ace-icon fa fa-undo bigger-110"></i> Hủy
									</button>
								</div>
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
					dataArray["base64"] = e.target.result;
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
					window.location.href = "${newURL}?";
				},
				error : function(error) {
					window.location.href = "${newURL}?";
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
					window.location.href = "${newURL}?";
				},
				error : function(error) {
					window.location.href = "${newURL}?";
				}
			});
		}
		function uploadFile(data) {
			$.ajax({
				url : '${newAPI}',
				type : 'POST',
				data : JSON.stringify(data),
				contentType : 'application/json',
				success : function(result) {
					window.location.href = "${newURL}?";
				},
				error : function(error) {
					window.location.href = "${newURL}?";
				}
			});
		}
	</script>
</body>
</html>
