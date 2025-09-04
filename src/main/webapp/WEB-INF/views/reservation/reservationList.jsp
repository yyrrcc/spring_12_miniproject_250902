<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css">

<div class="reservation-list">
    <h3>예약 목록</h3>

    <!-- 예약하기 버튼 -->
    <div class="reservation-actions">
        <button type="button" class="btn btn-primary" 
                onclick="location.href='${pageContext.request.contextPath}/reservation/reservationForm'">
            예약하기
        </button>
    </div>    
    
    <br />
    <table>
        <tr>
        	<th>예약번호</th>
        	<th>이름</th>
        	<th>날짜</th>
        	<th>시간</th>
        	<th>인원수</th>
       	</tr>
        
        
       	<c:forEach var="r" items="${resDtos}">
       		<c:if test="${sessionScope.sessionId == r.memberId || sessionScope.sessionId == 'admin'}">
		            <tr>
		                <td>${r.resId}</td>
		                <td>${r.memberDto.name}</td>
		                <td>${r.resDate}</td>
		                <td>${r.resTime}</td>
		                <td>${r.persons}</td>
		            </tr>
        	</c:if>
       	</c:forEach>

    </table>

    
</div>

<%@ include file="../common/footer.jsp" %>
