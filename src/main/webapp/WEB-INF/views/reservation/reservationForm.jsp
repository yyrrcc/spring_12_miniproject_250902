<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css">

<div class="reservation-form">
    <h3>예약하기</h3>
    <form action="resSuccess" method="post">
   		<input type="hidden" name="memberId" value="${sessionScope.sessionId }" readonly>
       	<input type="text" name="name" value="${sessionScope.sessionName }" readonly>
        <input type="date" name="resDate" required>
        <input type="time" name="resTime" required>
        <input type="number" name="persons" min="1" placeholder="인원 수" required>
        
        <div class="button-group">
	        <button type="submit" class="btn btn-primary">예약 등록</button>
	        <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/index'">취소</button>
        </div>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>
