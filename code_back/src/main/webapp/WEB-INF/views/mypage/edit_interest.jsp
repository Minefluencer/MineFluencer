<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관심사 수정</title>
    <link rel="stylesheet" href="resources/myLib/reset.css" />
    <link rel="stylesheet" href="resources/myLib/header.css" />
    <link rel="stylesheet" href="resources/myLib/footer.css" />
    <link rel="stylesheet" href="resources/myLib/my_page/edit_initerest.css" />
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
                        <a href="mypagef?jcode=P"><li class=""><span>비밀번호 수정</span> </li></a>
                        <li class="on"><span>관심사 수정</span></li>
                    </ul>
                </li>
                <li><a href=""><span>회원탈퇴</span></a></li>
            </ul>
        </nav>
        <main>
            <div class="heading">
                <span>관심사 수정</span>
                <span>등록한 관심사를 수정할 수 있습니다.</span>
            </div>
            <div class="form_interest">

                <form method="post">
                    <div class="items_container">
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c1" value="운동" onClick="count(this)">
                            <label for="c1">
                                <div>
                                    <span></span>
                                    <span>운동</span>
                                </div>
                                <span class="check_box"></span>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c2" value="여행" onClick="count(this)">
                            <label for="c2">
                                <div>
                                    <span></span>
                                    <span>여행</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c3" value="뷰티" onClick="count(this)">
                            <label for="c3">
                                <div>
                                    <span></span>
                                    <span>뷰티</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c4" value="패션" onClick="count(this)">
                            <label for="c4">
                                <div>
                                    <span></span>
                                    <span>패션</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c5" value="먹방" onClick="count(this)">
                            <label for="c5">
                                <div>
                                    <span></span>
                                    <span>먹방</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c6" value="요리" onClick="count(this)">
                            <label for="c6">
                                <div>
                                    <span></span>
                                    <span>요리</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c7" value="게임" onClick="count(this)">
                            <label for="c7">
                                <div>
                                    <span></span>
                                    <span>게임</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c8" value="음악" onClick="count(this)">
                            <label for="c8">
                                <div>
                                    <span></span>
                                    <span>음악</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c9" value="개발" onClick="count(this)">
                            <label for="c9">
                                <div>
                                    <span></span>
                                    <span>개발</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c10" value="동물" onClick="count(this)">
                            <label for="c10">
                                <div>
                                    <span></span>
                                    <span>동물</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c11" value="주식" onClick="count(this)">
                            <label for="c11">
                                <div>
                                    <span></span>
                                    <span>주식</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                        <div class="item_wrap">
                            <input type="checkbox" name="check" id="c12" value="키즈" onClick="count(this)">
                            <label for="c12">
                                <div>
                                    <span></span>
                                    <span>키즈</span>
                                    <span class="check_box"></span>
                                </div>
                            </label>
                        </div>
                    </div>
                    <button id="submit_btnI" type="submit">수정하기</button>
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
    <script>
	var maxChecked = 3;   //선택가능한 체크박스 갯수
	var totalChecked = 0; // 설정 끝

	function count(field) {
	    if (field.checked) // input check 박스가 체크되면 
	        totalChecked += 1; // totalChecked 증가
	    else // 체크가 아니면
	        totalChecked -= 1; // totalChecked 감소

	    if (totalChecked > maxChecked) { // totalchecked 수가 maxchecked수보다 크다면
	        alert ("최대 3개 까지만 선택 가능합니다."); // 팝업창 띄움
	    field.checked = false;
	    totalChecked -= 1;
	    }
	    
	}
    </script>
</body>
</html>