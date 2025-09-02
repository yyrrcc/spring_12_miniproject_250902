<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css">

<div class="form-container">
    <h2>로그인</h2>
    <form action="loginSuccess" method="post">
        <input type="text" name="id" placeholder="아이디" required>
        <input type="password" name="pw" placeholder="비밀번호" required>
        <button type="submit">로그인</button>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>
