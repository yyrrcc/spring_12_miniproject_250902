<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css">

<div class="reservation-form">
    <h3>예약하기</h3>
    <form action="reserve" method="post">
        <input type="text" name="name" placeholder="이름" required>
        <input type="date" name="resDate" required>
        <input type="time" name="resTime" required>
        <input type="number" name="persons" min="1" placeholder="인원 수" required>
        <button type="submit" class="btn btn-primary">예약 등록</button>
        <button type="button" class="btn btn-secondary" onclick="location.href='reservationList'">취소</button>
    </form>
</div>


<%@ include file="../common/footer.jsp" %>
