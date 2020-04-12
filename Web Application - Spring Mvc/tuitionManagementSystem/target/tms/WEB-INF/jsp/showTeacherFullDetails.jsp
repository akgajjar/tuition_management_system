<%@page import="com.infoobjects.tms.utils.TmsUtils"%>
<%@page import="com.infoobjects.tms.entity.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="/tms/resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="/tms/resources/js/form-validation/jquery.min.js"></script>
<link rel="stylesheet" href="/tms/resources/css/jquery-ui.css" />
<script src="/tms/resources/js/form-validation/jquery.validate.min.js"></script>
<link href="/tms/resources/css/showfulldetails.css" rel="stylesheet"
	type="text/css" media="all" />
</head>
<body>
	<%
		Teacher teacher = (Teacher) request.getAttribute("teacher");
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="heading">
		<h1>Show Full Details</h1>
	</div>
	<div class="container1">
		<table>
			<tr>
				<td colspan="2" class="head">Teacher Personal Details</td>
			</tr>
			<tr>
				<td class="b">Teacher Id :</td>
				<td class="data"><%=teacher.getTeacherId()%></td>
			</tr>
			<tr>
				<td class="b">Name :</td>
				<td class="data"><%=teacher.getTeacherName()%></td>
			</tr>
			<tr>
				<td class="b">Class :</td>
				<td class="data"><%=teacher.getTeacherDesignation()%></td>
			</tr>
			<tr>
				<td class="b">Address:</td>
				<td class="data"><%=teacher.getTeacherAddress()%></td>
			</tr>
			<tr>
				<td class="b">Mobile :</td>
				<td class="data"><%=teacher.getTeacherMobile()%></td>
			</tr>
			<tr>
				<td class="b">Email :</td>
				<td class="data"><%=teacher.getTeacherEmailId()%></td>
			</tr>
			<tr>
				<td class="b">Gender :</td>
				<td class="data"><%=teacher.getTeacherSalary()%></td>
			</tr>
		</table>
		<form action="/tms<%=TmsUtils.showAllTeachersMapping%>">
			<div class="btn">
				<input type="submit" name="button" id="btnform" value="BACK" />
			</div>
		</form>
	</div>
</body>
</html>
