<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/layout/user/taglib.jsp"%>


 <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index.html">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      

      

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#user-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-person"></i><span>User Managerment</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="user-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="<%=request.getContextPath()%>/quan-tri/user/view">
              <i class="bi bi-circle"></i><span>Danh sách người dùng</span>
            </a>
          </li>
          <li>
            <a href="<%=request.getContextPath()%>/quan-tri/user/add">
              <i class="bi bi-circle"></i><span>Thêm người dùng</span>
            </a>
          </li>
          
        </ul>
      </li><!-- End Tables Nav -->

     
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#user-nav" data-bs-toggle="collapse" href="#">
          <i class=" bi bi-layout-text-window-reverse"></i><span>Products Managerment</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="user-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="<%=request.getContextPath()%>/quan-tri/product/view">
              <i class="bi bi-circle"></i><span>Products List</span>
            </a>
          </li>
          <li>
            <a href="<%=request.getContextPath()%>/quan-tri/product/add">
              <i class="bi bi-circle"></i><span>Add Product</span>
            </a>
          </li>
          
        </ul>
      </li><!-- End Tables Nav -->

      

      

      

      

    </ul>

  </aside><!-- End Sidebar-->