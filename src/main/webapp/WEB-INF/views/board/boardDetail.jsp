<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">

<div class="detail-container">
    <h2>게시글 상세보기</h2>

    <div class="detail-item">
        <label>작성자</label>
        <p>${boardDto.memberId}</p>
    </div>

    <div class="detail-item">
        <label>제목</label>
        <p>${boardDto.title}</p>
    </div>

    <div class="detail-item">
        <label>내용</label>
        <p style="white-space: pre-wrap;">${boardDto.content}</p>
    </div>

    <div class="detail-item">
        <label>조회수</label>
        <p>${boardDto.hit}</p>
    </div>

    <div class="detail-item">
        <label>작성일</label>
        <p>${boardDto.regDate}</p>
    </div>

    <div class="detail-btns">
        <a href="boardList" class="btn">글목록</a>
        <c:if test="${sessionScope.sid eq board.writer}">
            <a href="boardEdit.jsp?boardId=${board.boardId}" class="btn">수정</a>
            <a href="boardDelete?bnum=${boardDto.bnum}" class="btn cancel">삭제</a>
        </c:if>
    </div>
    
    
    
    <!-- 댓글 영역 -->
    <div class="comment-section">
        <h3>댓글</h3>

    <!-- 댓글 입력 -->
    <form action="commentWrite" method="post" class="comment-form">
        <input type="hidden" name="boardId" value="${board.boardId}">
        <div class="form-group">
            <label for="commentWriter">작성자</label>
            <input type="text" id="commentWriter" name="writer" value="${sessionScope.sessionId}" readonly>
        </div>
        <div class="form-group">
            <label for="commentContent">내용</label>
            <textarea id="commentContent" name="content" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">등록</button>
    </form>

    <!-- 댓글 리스트 -->
    <div class="comment-list">
        <c:forEach var="comment" items="${commentList}">
            <div class="comment-item">
                <p class="comment-writer">${comment.writer} <span class="comment-date">${comment.regdate}</span></p>
                <p class="comment-content">${comment.content}</p>
            </div>
        </c:forEach>
    </div>
</div>
  
    
</div>

<%@ include file="../common/footer.jsp" %>
