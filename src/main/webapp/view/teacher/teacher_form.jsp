

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>


	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${teacher != null}">
					<form action="UpdateTeacher" method="post">
				</c:if>
				<c:if test="${teacher == null}">
					<form action="AddTeacher" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${teacher != null}">
            			Chỉnh sửa giảng viên
            		</c:if>
						<c:if test="${teacher == null}">
            			Thêm mới giảng viên
            		</c:if>
					</h2>
				</caption>

				<c:if test="${teacher != null}">
					<input type="hidden" name="id"
						value="<c:out value='${teacher.id}' />" />
				</c:if>


				<fieldset class="form-group">
					<label>Tên giảng viên</label> <input type="text"
						value="<c:out value='${teacher.name}' />" class="form-control"
						name="name">
				</fieldset>

				<fieldset class="form-group">
					<label>Giới tính</label> <input type="text"
						value="<c:out value='${teacher.gender}' />" class="form-control"
						name="gender">
				</fieldset>
				<fieldset class="form-group">
					<label>Điện thoại</label> <input type="text"
						value="<c:out value='${teacher.phoneNumber}' />" class="form-control"
						name="phone_number" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Chức vụ</label> <input type="text"
						value="<c:out value='${teacher.position}' />" class="form-control"
						name="position">
				</fieldset>
				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${teacher.email}' />" class="form-control"
						name="email" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				<a href="javascript:history.go(-1);" class="btn btn-primary">Quay Lại</a>
				</form>
			</div>
		</div>
	</div>
</body>

</html>