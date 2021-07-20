<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Start wrapper-->
<div id="wrapper">

	<!--Start sidebar-wrapper-->
	<div id="sidebar-wrapper" data-simplebar=""
		data-simplebar-auto-hide="true">
		<div class="brand-logo">
			<a href="index.html"> <img
				src="<c:url value='/template/img/logodc1.png'/>"
				style="height: 40px; width: auto">
			</a>
		</div>
		<ul class="sidebar-menu do-nicescrol">
			<li class="sidebar-header">MAIN NAVIGATION</li>
			<li><a href="<c:url value='/quan-tri/danh-sach-san-pham'/>">
					<i class="zmdi zmdi-view-dashboard"></i> <span>Danh sách sản
						phẩm</span>
			</a></li>
			<li><a href="<c:url value='/quan-tri/san-pham/chinh-sua'/>">
					<i class="zmdi zmdi-format-list-bulleted"></i> <span>Thêm
						sản phẩm</span>
			</a></li>
			<li><a href="<c:url value='/quan-tri/tai-khoan'/>"> <i class="zmdi zmdi-face"></i> <span>Profile</span>
			</a></li>
			<li><a href="<c:url value='/trang-chu'/>"> <i
					class="zmdi zmdi-balance"></i> <span>Trở về trang chủ</span>
			</a></li>
			<li><div class="sharethis-inline-share-buttons" style="padding-top: 15px"></div></li>
		</ul>

	</div>
	<!--End sidebar-wrapper-->
</div>
