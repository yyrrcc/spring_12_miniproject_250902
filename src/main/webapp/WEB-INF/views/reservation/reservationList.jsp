<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css">

<div class="reservation-list">
    <h3>예약 목록</h3>
    <table>
        <tr><th>예약번호</th><th>이름</th><th>날짜</th><th>시간</th><th>예약하기</th></tr>
        <c:forEach var="r" items="${reservList}">
            <tr>
                <td>${r.resId}</td>
                <td>${r.name}</td>
                <td>${r.date}</td>
                <td>${r.time}</td>
                <td><button class="btn btn-primary">예약하기</button></td>
            </tr>
        </c:forEach>
    </table>
</div>

<%@ include file="../common/footer.jsp" %>
