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
            <a href="boardDelete.do?boardId=${board.boardId}" class="btn cancel">삭제</a>
        </c:if>
    </div>
    
    
    
    <!-- 댓글 영역 -->
    <div class="comment-section">
        <h3>댓글</h3>

        <!-- 댓글 작성 -->
        <form action="commentAdd" method="post">
            <input type="hidden" name="boardNum" value="1">
            <input type="text" name="writer" placeholder="작성자" required>
            <textarea name="content" placeholder="댓글 내용을 입력하세요" required></textarea>
            <button type="submit" class="btn">등록</button>
        </form>

        <!-- 댓글 리스트 -->
        <div class="comment-list">
            <div class="comment-item">
                <p><strong>김철수</strong> : 좋은 글 잘 봤습니다!</p>
                <span class="comment-date">2025-09-02</span>
            </div>
            <div class="comment-item">
                <p><strong>이영희</strong> : 동의합니다!</p>
                <span class="comment-date">2025-09-02</span>
            </div>
        </div>
    </div>    
    
</div>

<%@ include file="../common/footer.jsp" %>
