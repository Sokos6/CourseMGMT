<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://localhost:8080/CourseMGMT/index.jsp">CourseMGMT</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="http://localhost:8080/CourseMGMT/allCourses.html">All Courses <span class="sr-only">(current)</span></a></li>
        <li><a href="http://localhost:8080/CourseMGMT/addCourse.jsp">Add Course</a></li>
   	</ul>
   	</div>
   	</div>
	<h2>Add Course</h2>
	<c:if test="${not empty error}">
		<span style="color: red;"> ${error}<br>
		</span>
	</c:if>

	<!-- <form method="post" action="rest/addCourse"> -->
	
	<form name="newform">
	<div class="form-group">
		<table>
			<tr>
				<td>Course Name:</td>
				<td><input id="coursename" class="form-control" type="text" name="coursename" value="${course.name}">
				</td>
			</tr>
			<tr>
				<td>Credits:</td>
				<td><input type="text" name="credits" class="form-control" value="${course.credits}">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button name="submit" class="btn btn-default" type="submit">Submit</button>
				</td>
			</tr>
		</table>
		</div>
		<input type="hidden" name="id" value="${course.id}">
	</form>
	<script src="js/coursejs.js"></script>
</body>
</html>