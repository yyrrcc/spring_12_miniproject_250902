<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css">

<div class="reservation-list">
    <h3>예약 목록</h3>
    <table>
        <tr>
        	<th>예약번호</th>
        	<th>이름</th>
        	<th>날짜</th>
        	<th>시간</th>
        	<th>인원수</th>
       	</tr>
        
        <c:forEach var="r" items="${resDtos}">
            <tr>
                <td>${r.resId}</td>
                <td>${r.memberId}</td>
                <td>${r.resDate}</td>
                <td>${r.resTime}</td>
                <td>${r.persons}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<%@ include file="../common/footer.jsp" %>
