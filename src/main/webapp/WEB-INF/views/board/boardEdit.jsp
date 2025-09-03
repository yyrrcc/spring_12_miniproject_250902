<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boardEdit.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
    <h2>글 수정</h2>
    <form action="boardEditSuccess" method="post" class="board-form">
        <!-- 게시글 번호 hidden -->
        <input type="hidden" name="bnum" value="${boardDto.bnum}">

        <div class="form-group">
            <label>작성자</label>
            <div class="readonly-box">${boardDto.memberId}</div>
        </div>

        <div class="form-group">
            <label>제목</label>
            <input type="text" name="title" value="${boardDto.title}" required>
        </div>

        <div class="form-group">
            <label>내용</label>
            <textarea name="content" rows="8" required>${boardDto.content}</textarea>
        </div>

        <div class="form-group">
            <label>작성일</label>
            <div class="readonly-box">${boardDto.regDate}</div>
        </div>

        <div class="button-group">
            <button type="submit" class="btn-submit">수정 완료</button>
            <button type="button" class="btn-cancel" onclick="location.href='boardList'">취소</button>
        </div>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>
