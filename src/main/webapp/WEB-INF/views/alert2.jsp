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
		
		var conf = "${conf}";
		var confmsg = "${confmsg}"
		if (confirm(conf)) {
		    alert (confmsg);
		    location.href = url;
		} else {
		    alert("취소되었습니다.");
		    return;
		}
		
		alert (msg);
		location.href = url;
	</script>
</body>
</html>