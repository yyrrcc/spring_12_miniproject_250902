<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">

<div class="mypage-container">
    <h2>마이페이지</h2>
    
    <form action="mypageEdit" method="post">
        <div class="form-group">
            <label for="memberId">아이디</label>
            <input type="text" id="id" name="memberId" value="${sessionScope.sessionId}" readonly>
        </div>
        
        <div class="form-group">
            <label for="password">비밀번호</label>
            <input type="password" id="pw" name="password" placeholder="변경 할 비밀번호 입력" required>
        </div>
        
        <div class="form-group">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" value="${memberDto.name}">
        </div>
        
        <div class="form-group">
            <label for="phone">휴대전화</label>
            <input type="text" id="phone" name="phone" value="${memberDto.phone}">
        </div>
        
        <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" value="${memberDto.email}">
        </div>
        
        <div class="form-group">
            <label for="regDate">가입일</label>
            <input type="text" id="regDate" name="regDate" value="${memberDto.regDate}" readonly>
        </div>        
        
        <div class="button-group">
            <button type="submit" class="btn-primary">수정하기</button>
            <button type="button" class="btn-secondary" onclick="location.href='${pageContext.request.contextPath}/index'">취소</button>
        </div>
    </form>
    	
    	<div class="button-group">
	    	<form action="memDelete">
	    		<button type="submit" class="btn-delete" name="memberId" value="${memberDto.memberId }">탈퇴하기</button>
	    	</form>
    	</div>
    	
</div>

<%@ include file="../common/footer.jsp" %>
