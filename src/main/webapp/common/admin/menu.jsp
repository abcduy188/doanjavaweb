<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
    <script type="text/javascript">
        try{ace.settings.loadState('sidebar')}catch(e){}
    </script>
     <ul class="nav nav-list">
        <li >
            <a href="#" class="dropdown-toggle"  style="background-color: #343a40!important">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text" style="color:blue"></span>
               <i style="font-size: 20px;color: white;">Quản Lí</i>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li>
                    <a href="<c:url value='/quan-tri/danh-sach-san-pham'/>">
                        <i class="menu-icon fa fa-caret-right"></i>
                        <i style="font-size: 15px">Danh sách sản phẩm</i>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>
    <div class="sidebar-toggle sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>