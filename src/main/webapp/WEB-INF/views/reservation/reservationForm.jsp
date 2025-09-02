<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css">

<div class="form-container">
    <h2>예약하기</h2>
    <form action="reservation.do" method="post">
        <input type="date" name="resDate" required>
        <input type="time" name="resTime" required>
        <input type="number" name="persons" min="1" placeholder="인원 수" required>
        <button type="submit">예약</button>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>
