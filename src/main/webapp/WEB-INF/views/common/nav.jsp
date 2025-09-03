<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/index">홈</a></li>
        <c:choose>
        	<c:when test="${empty sessionScope.sessionId }">
				<li><a href="${pageContext.request.contextPath}/member/signup">회원가입</a></li>
        		<li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
				<li><a href="${pageContext.request.contextPath}/reservation/reservationForm">예약하기</a></li>        		
        	</c:when>
        	<c:otherwise>
				<li><a href="${pageContext.request.contextPath}/member/mypage">${sessionScope.sessionName }님의 마이페이지</a></li>        	
				<li><a href="${pageContext.request.contextPath}/signout">로그아웃</a></li>
				<li><a href="${pageContext.request.contextPath}/reservation/reservationList">나의예약</a></li>
        	</c:otherwise>
        </c:choose>
        <li><a href="${pageContext.request.contextPath}/board/boardList">게시판</a></li>
        <li><a href="${pageContext.request.contextPath}/map/map">오시는 길</a></li>
    </ul>
</nav>
