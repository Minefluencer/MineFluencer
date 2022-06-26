<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>찜 목록</title>
<link rel="stylesheet" href="my_list.css" />
<link rel="stylesheet" href="../css/reset.css" />
</head>
<body>
<body id="main_container">
		<header>header ê³µê°</header>
		<div class="container">
			<h1 id="user">ê¹ì§í<!--ë°ì´í°--><span>ëì ì° ëª©ë¡</span></h1>
			<div class="main">
				<div class="category">
					<form action="#">
						<ul>
							<div class="reset">
								<h1>ì¹´íê³ ë¦¬</h1>
								<button type="reset">ì´ê¸°í</button>
							</div>
							<li>
								<input type="checkbox" id="codding" name="myList" />
								<label for="codding">ê°ë°</label>
							</li>
							<li>
								<input type="checkbox" id="game" name="myList" value="coding" />
								<label for="game">ê²ì</label>
							</li>
							<li>
								<input type="checkbox" id="animal" name="myList" value="coding" />
								<label for="animal">ëë¬¼</label>
							</li>
							<li>
								<input type="checkbox" id="food" name="myList" value="coding" />
								<label for="food">ë¨¹ë°©</label>
							</li>
							<li>
								<input type="checkbox" id="beauty" name="myList" value="coding" />
								<label for="beauty">ë·°í°</label>
							</li>
							<li>
								<input type="checkbox" id="travel" name="myList" value="coding" />
								<label for="travel">ì¬í</label>
							</li>
							<li>
								<input type="checkbox" id="cook" name="myList" value="coding" />
								<label for="cook">ìë¦¬</label>
							</li>
							<li>
								<input type="checkbox" id="traning" name="myList" value="coding" />
								<label for="traning">ì´ë</label>
							</li>
							<li>
								<input type="checkbox" id="music" name="myList" value="coding" />
								<label for="music">ìì</label>
							</li>
							<li>
								<input type="checkbox" id="stock" name="myList" value="coding" />
								<label for="stock">ì£¼ì</label>
							</li>
							<li>
								<input type="checkbox" id="kids" name="myList" value="coding" />
								<label for="kids">í¤ì¦</label>
							</li>
							<li>
								<input type="checkbox" id="fassion" name="myList" value="coding" />
								<label for="fassion">í¨ì</label>
							</li>
						</ul>
					</form>
				</div>
				<div class="inf_list" id="result">
					<img src="./logo_default.svg" alt="" />
					<h1>ëë§ì ì¸íë£¨ì¸ìê° ê³ ë¯¼ëëì?</h1>
					<p><span>MINEíë£¨ì¸ì</span>ìì ì°¾ìë³´ì¸ì!</p>
					<div class="btn_box">
						<a href="#">
							<button class="btn main_btn">ë©ì¸ì¼ë¡</button>
						</a>
						<a href="#">
							<button class="btn rank_btn">ë­í¹</button>
						</a>
					</div>
				</div>
			</div>
		</div>
		<footer>footer</footer>
		<script src="./my_list.js"></script>
	</body>
</body>
</html>