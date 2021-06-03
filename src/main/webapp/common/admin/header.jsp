<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@include file="/common/taglib.jsp"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="dec"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ page import="vn.name.dcd.utils.SecurityUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="navbar" class="navbar navbar-default-ace-save-state"
	style="background: #5e44a5">
	<div class="navbar-container ace-save-state" id="navbar-container">
		<div class="navbar-header pull-left">
			<a class="navbar-brand" href="#"> <img height="auto"
				width="150px" src="<c:url value='/template/img/logodc1.png'/>"
				alt="">
			</a>
		</div>
		<div
			class="navbar-buttons navbar-header pull-right collapse navbar-collapse"
			role="navigation">
			<ul class="nav ace-nav">
				<li class="light-blue dropdown-modal"><a
					href="<c:url value='/trang-chu'/>"
					style="background: #3d2d6c; border-radius: 15px"> 
						Trang chủ
				</a></li>
				<li class="light-blue dropdown-modal"><a data-toggle="dropdown"
					href="#" class="dropdown-toggle"
					style="background: #3d2d6c; border-radius: 15px"> Xin chào <%=SecurityUtils.getPrincipal().getFullname()%>
				</a></li>
				<li class="light-blue dropdown-modal"><a
					href="<c:url value='/thoat'/>"
					style="background: #3d2d6c; border-radius: 15px"> <i
						class="ace-icon fa fa-power-off"></i> Thoát
				</a></li>

			</ul>
		</div>
	</div>
</div>
