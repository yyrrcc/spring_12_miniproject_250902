<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경고창 구현</title>
</head>
<body>
	<script type="text/javascript">
		var msg = "${msg}";
		var url = "${url}";
		alert (msg);
		location.href = url;
	</script>
</body>
</html>