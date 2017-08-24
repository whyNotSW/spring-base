<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>1 userid</th>
			<th>2 userpw</th>
			<th>3 username</th>
			<th>4 email</th>
			<th>5 regdate</th>
			<th>6 updatedate</th>
		</tr>
		<c:forEach var="testM" items="${testliMember }">
			<tr>
				<td>${testM.userid}</td>
				<td>${testM.userpw}</td>
				<td>${testM.username}</td>
				<td>${testM.email}</td>
				<td>${testM.regdate}</td>
				<td>${testM.updatedate}</td>
			</tr>
		</c:forEach>
	</table>
	

</body>
</html>