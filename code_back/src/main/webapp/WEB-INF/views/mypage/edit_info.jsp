<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 정보 수정</title>
    <link rel="stylesheet" href="resources/myLib/reset.css" />
    <link rel="stylesheet" href="resources/myLib/header.css" />
    <link rel="stylesheet" href="resources/myLib/footer.css" />
    <link rel="stylesheet" href="resources/myLib/my_page/edit_info.css" />
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
                        <li class="on"><span>내 정보 수정</span></li>
                        <a href="mypagef?jcode=P"><li class=""><span>비밀번호 수정</span> </li></a>
                        <a href="mypagef?jcode=I"><li class=""><span>관심사 수정</span> </li></a>
                    </ul>
                </li>
                <li><a href=""><span>회원탈퇴</span></a></li>
            </ul>
        </nav>
        <main>
            <div class="heading">
                <span>내 정보 수정</span>
                <span>회원가입 시 입력한 정보를 수정할 수 있습니다.</span>
            </div>
            <div class="form_wrap">
                <form method="post">
                    <div class="form_input">
                        <div>
                            <p>닉네임</p>
                            <div class="nick_box">
                                <input type="text" name="nick_name" id="nick_name" value="${mlist.nick_name}" readonly /><!--
                                --><button>변경</button>
                            </div>
                        </div>
                        <div>
                            <p>아이디</p>
                            <div class="id_box">
                                <input type="text" name="id" id="id" value="${mlist.id}" readonly />
                            </div>
                        </div>
                        <div>
                            <p>이메일</p>
                            <div class="email_box">
                                <input type="text" name="email" id="email" autocomplete="off" />
                                <p>@</p>
                                <select name="com" id="com" aria-placeholder="-선택-">
                                    <option value="naver.com">naver.com</option>
                                    <option value="google.com">google.com</option>
                                    <option value="daum.com">daum.net</option>
                                    <option value="kakao.com">kakao.com</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <p>생년월일</p>
                            <input
							type="text"
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
							name="birth"
							id="birth"
							placeholder="주민등록번호 앞 6자리를 입력"
							autocomplete="off"
							maxlength="6"
						/>
                        </div>
                        <div>
                            <p>성별</p>
                            <div class="gender_box">
                                <div>
                                    <input type="radio" name="gender" id="man" value="man"/>
                                    <label for="man">남</label>
                                </div>
                                <div>
                                    <input type="radio" name="gender" id="women" value="women" />
                                    <label for="women">여</label>
                                </div>
                            </div>
                        </div>
                        <div class="color_box">
                            <p>좋아하는 색은?</p>
                            <select name="color" id="color">
                                <option value="red">빨간색</option>
                                <option value="green">초록색</option>
                                <option value="blue">파랑색</option>
                            </select>
                        </div>
                    </div>
                    <button id="submit_btn" type="button">수정하기</button>
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