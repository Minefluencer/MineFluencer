<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 수정</title>
    <link rel="stylesheet" href="resources/myLib/reset.css" />
    <link rel="stylesheet" href="resources/myLib/header.css" />
    <link rel="stylesheet" href="resources/myLib/footer.css" />
    <!-- <link rel="stylesheet" href="resources/myLib/my_page/edit_info.css" /> -->
    <link rel="stylesheet" href="resources/myLib/my_page/edit_pw.css" />
    <link rel="stylesheet" href="resources/myLib/hamburger.css" />
</head>

<body>
    <header>
    	<jsp:include page="../module/header.jsp" />
    </header>
    <div class="container">
        <nav>
            <ul>
                <li>
                    <ul class="list">
                        <a href="mypagef?jcode=U"><li class=""><span>내 정보 수정</span> </li></a>
                        <li class="on"><span>비밀번호 수정</span></li>
                       <a href="mypagef?jcode=I"><li class=""><span>관심사 수정</span></li></a>
                    </ul>
                </li>
                <li><a href=""><span>회원탈퇴</span></a></li>
            </ul>
        </nav>
        <main>
            <div class="heading">
                <span>비밀번호 수정</span>
                <span>비밀번호를 수정할 수 있습니다.</span>
            </div>
            <div class="form_wrap">
                <form method="post">
                    <div class="form_input">
                        <div>
                            <p>비밀번호</p>
                            <input type="password" name="password" id="password" />
                            <div class="check_text">
                                <span id="pw_check"></span>
                            </div>
                        </div>
                        <div>
                            <p>새 비밀번호</p>
                            <input type="password" name="newPassword" id="newPassword" placeholder="새 비밀번호를 입력해주세요."
                                autocomplete="off" />
                            <div class="check_text">
                                <span id="pw_check"></span>
                            </div>
                        </div>
                        <div>
                            <p>새 비밀번호 확인</p>
                            <input type="password" name="nePassword_re" id="newPassword_re" placeholder="새 비밀번호를 다시 입력해주세요."
                                autocomplete="off" />
                            <div class="check_text">
                                <span id="pw_re_check"></span>
                            </div>
                        </div>
                    </div>
                    <button id="submit_btnP" type="submit">수정하기</button>
                    <div class="hidden">
                    	<input type="text" name="id" id="id" value="${mlist.id}" readonly />
                    </div>
                </form>
            </div>
        </main>
    </div>
    <footer>
    	<jsp:include page="../module/footer.jsp" />
    </footer>
    <script src="resources/myLib/jquery-3.2.1.min.js"></script>
    <script src="resources/myLib/my_page/edit_info.js"></script>
    
</body>

</html>