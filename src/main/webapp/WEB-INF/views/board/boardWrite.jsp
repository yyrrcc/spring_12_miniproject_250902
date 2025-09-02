<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">

<div class="form-container">
    <h2>게시글 작성</h2>
    <form action="boardWrite.do" method="post">
        <input type="text" name="title" placeholder="제목" required>
        <textarea name="content" rows="10" placeholder="내용을 입력하세요"></textarea>
        <button type="submit">등록</button>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>
