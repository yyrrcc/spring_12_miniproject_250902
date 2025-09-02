<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">

<div class="list-container">
    <h2>게시판</h2>
    <table>
        <tr>
            <th>No</th>
            <th>제목</th>
            <th>작성자</th>
            <th>조회수</th>
            <th>날짜</th>
        </tr>
        
		<c:forEach items="${boardDtos }" var="boardDto">
			<tr>
	            <td>${boardDto.bnum }</td>
	            <td><a href="boardDetail?bnum=${boardDto.bnum }">${boardDto.title }</a></td>
	            <td>${boardDto.memberId }</td>
	            <td>${boardDto.hit }</td>
	            <td>
	            	<fmt:formatDate value="${boardDto.regDate }" pattern="yyyy-MM-dd HH:mm"/>
	            </td>
	        </tr>
		</c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/board/boardWrite" class="btn">글쓰기</a>
    
    
    
    <c:if test="${not empty sessionScope.sid}">
        <a href="${pageContext.request.contextPath}/board/boardWrite" class="btn">글쓰기</a>
    </c:if>
</div>

<%@ include file="../common/footer.jsp" %>
