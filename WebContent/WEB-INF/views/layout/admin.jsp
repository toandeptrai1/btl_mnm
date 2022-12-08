<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layout/user/taglib.jsp" %>>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Diana’s jewelry</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<%=request.getContextPath()%>/assets/admin/assets/img/favicon.png" rel="icon">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

 
  <!-- Vendor CSS Files -->
  <link href="<%=request.getContextPath()%>/assets/admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath()%>/assets/admin/assets/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/admin/assets/css/all.min.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.4.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
<%@include file="/WEB-INF/views/layout/admin/header.jsp" %>
<%@include file="/WEB-INF/views/layout/admin/sidbar.jsp" %>
<dec:body></dec:body>

<%@include file="/WEB-INF/views/layout/admin/footer.jsp" %>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/chart.js/chart.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/echarts/echarts.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/quill/quill.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/admin/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="<%=request.getContextPath()%>/assets/admin/assets/js/main.js"></script>
</body>
</html>