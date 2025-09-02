<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css">

<div class="list-container">
    <h2>내 예약 내역</h2>
    <table>
        <tr><th>날짜</th><th>시간</th><th>인원</th></tr>
        <!-- 예약 내역 반복문 -->
        <tr><td>2025-09-02</td><td>14:00</td><td>2명</td></tr>
    </table>
</div>

<%@ include file="../common/footer.jsp" %>
