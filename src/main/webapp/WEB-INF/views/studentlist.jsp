<html>
<head>
  <%@include file="./base.jsp"%>
   <title><c:out value="${title2 }">Student Curd App..</c:out></title>
</head>
<body>

		<!-- Student List -->

		<h2 class="display-4 text-white">Students List</h2>
		<ul class="breadcrumb bg-transparent text-dark">
			<a href="${pageContext.request.contextPath }/ "
				style="text-decoration: none">
				<h4 class="breadcrumb-item text-dark">Students</h4>
			</a>
			<h4 class="breadcrumb-item active">&nbsp;/&nbsp; Student List</h4>
		</ul>

		<div class="separator"></div>
		<div class="row text-dark">
			<div class="col-lg-12">
				<table class="table table-striped table-light">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Photo</th>
							<th scope="col">Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Gender</th>
							<th scope="col">Course</th>
							<th scope="col">Email</th>
							<th scope="col">Mobile</th>							
							<th scope="col">Address</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${studentKey }" var="s">

							<tr>

								<th scope="row">${s.id }</th>
								<td><img class="rounded-circle" alt="profile image"
									src="<c:url value="/resources/img/${s.id}.jpg" />" width="50" height="50">
								</td>
								<td>${s.name }</td>
								<td>${s.dob }</td>
								<td>${s.gender }</td>
								<td>${s.course }</td>
								<td>${s.email }</td>
								<td>${s.mobile }</td>
								<td>${s.address }</td>
								<td class="text-left">
									<div class="actions">
										<a href="update/${s.id }"
											class="btn btn-sm bg-success-light mr-2"> <i
											class="fas fa-pen"></i>
										</a> <a href="delete/${s.id }" class="btn btn-sm bg-danger-light"> <i
											class="fas fa-trash"></i>
										</a>
									</div>
								</td>
							</tr>


						</c:forEach>

					</tbody>



				</table>
			</div>
		</div>
</body>
</html>