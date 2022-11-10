<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>



<script src="<c:url value="/resources/js/main.js"/>"></script>


</head>
<body>

	<!-- Vertical navbar -->
	<div class="vertical-nav bg-white" id="sidebar">
		<div class="py-4 px-3 mb-4 bg-light">
			<div class="media d-flex align-items-center">
				<img alt="my image" src='<c:url  value="/resources/img/logo.png" />'
					width="100" class="mr-3 rounded-circle img-thumbnail shadow-sm">
				<div class="media-body">
					<h4 class="m-0">ABC</h4>
					<p class="font-weight-normal text-muted mb-0">University</p>

				</div>
			</div>
		</div>

		<a href="${pageContext.request.contextPath }/"
			style="text-decoration: none"><h4
				class="font-weight-bold text-dark px-3 pb-4 mb-0">Student</h4></a>


		<ul class="nav flex-column bg-white mb-o">
			<li class="nav-item"><a href="studentlist"
				class="nav-link text-dark bg-light"> <i
					class="fa fa-list-alt mr-3 text-primary fa-fw"></i> Student List
			</a></li>
			<li class="nav-item"><a href="add-student"
				class="nav-link text-dark bg-light"> <i
					class="fas fa-user-graduate mr-3 text-primary fa-fw"></i> Student
					Add
			</a></li>
		</ul>

	</div>


	<div class="page-content p-4" id="content">

		<!-- toggle btn -->
		<button id="sidebarCollapse" type="button"
			class="btn btn-light bg-white rounded-pill shadow-sm px-4 ">
			<i class="fa fa-bars mr-2"></i><small
				class="text-uppercase font-weight-bold">Menu</small>
		</button>
</body>

</html>