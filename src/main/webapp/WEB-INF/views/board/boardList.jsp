<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">

<div class="list-container">
    <h2>게시판</h2>
    <table>
        <tr><th>No</th><th>제목</th><th>작성자</th><th>날짜</th></tr>
        <!-- 반복문으로 글 목록 출력 -->
        <tr><td>1</td><td><a href="#">첫 글입니다</a></td><td>admin</td><td>2025-09-02</td></tr>
    </table>
    <a href="boardWrite.jsp" class="btn">글쓰기</a>
</div>

<%@ include file="../common/footer.jsp" %>
