<html>
<head>
<%@include file="./base.jsp"%>
<title><c:out value="${title }">Student Curd App</c:out></title>
</head>
<body>

	
		<!-- Student fields------------------------------------- -->

		<h2 class="display-4 text-white">Add Students</h2>
		<ul class="breadcrumb bg-transparent text-dark">
			<a href="${pageContext.request.contextPath }/"
				style="text-decoration: none">
				<h4 class="breadcrumb-item text-dark">Students</h4>
			</a>
			<h4 class="breadcrumb-item active">&nbsp;/&nbsp; Add Students</h4>
		</ul>


		<div class="separator"></div>
		<div class="row text-white">

			<!-- ----------------fields----------------- -->
			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<form action="addsutudent-form" method="post"
								enctype="multipart/form-data">
								<div class="row">
									<div class="col-12">
										<h5 class="form-title font-weight-bold text-dark">
											<span>Student Information</span>
										</h5>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark fname">
											<label>Student Name</label> <input name="name" type="text"
												class="form-control" required>
										</div>
									</div>

									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label for="Gender">Gender</label> <select id="Gender"
												name="gender" class="form-control text-dark" required  >
												<option value="">Select Gender</option>
												<option value="Male">Male</option>
												<option value="Female">Female</option>
											</select>
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Date of Birth</label>
											<div>
												<input name="dob" type="date" class="form-control" required>
											</div>
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Course</label> <input name="course" type="text"
												class="form-control" required >
										</div>
									</div>

									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Email</label> <input name="email" type="email"
												class="form-control" required>
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Mobile Number</label> <input name="mobile" type="text"
												class="form-control" required>
										</div>
									</div>

									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Permanent Address</label>
											<textarea class="form-control" name="address" required></textarea>
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Student Image</label> <input name="studentimg"
												type="file" class="form-control" required>
										</div>
									</div>
									<div class="col-12">
										<h5 class="form-title text-dark">
											<span>Parent Information</span>
										</h5>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Father's Name</label> <input name="fname" type="text"
												class="form-control">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Father's Occupation</label> <input type="text"
												class="form-control">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Father's Mobile</label> <input type="text"
												class="form-control">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Father's Email</label> <input type="email"
												class="form-control">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Mother's Name</label> <input name="mname" type="text"
												class="form-control">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Mother's Occupation</label> <input type="text"
												class="form-control">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Mother's Mobile</label> <input type="text"
												class="form-control">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group text-dark">
											<label>Mother's Email</label> <input type="email"
												class="form-control">
										</div>
									</div>

									<div class="col-12">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>

</html>