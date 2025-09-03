<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">

<div class="form-container">
    <h2>게시글 작성</h2>
    <form action="boardWriteSuccess" method="post">
        <label>작성자</label>
        <input type="text" name="memberId" value="${sessionId }">

        <label>제목</label>
        <input type="text" name="title" placeholder="제목을 입력하세요" required>

        <label>내용</label>
        <textarea name="content" rows="10" placeholder="내용을 입력하세요" required></textarea>

        <div class="form-btns">
            <button type="submit" class="btn">등록</button>
            <a href="boardList" class="btn cancel">취소</a>
        </div>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>
