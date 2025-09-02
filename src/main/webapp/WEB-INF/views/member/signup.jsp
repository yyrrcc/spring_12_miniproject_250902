<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css">

<div class="form-container">
    <h2>회원가입</h2>
    <form action="signupSuccess" method="post">
        <input type="text" name="memberId" placeholder="아이디" required>
        <input type="password" name="password" placeholder="비밀번호" required>
        <input type="text" name="name" placeholder="이름" required>
        <input type="text" name="phone" placeholder="휴대전화">
        <input type="email" name="email" placeholder="이메일">
        <button type="submit">가입하기</button>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>
