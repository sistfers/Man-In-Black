<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style type="text/css">
td, th {
	text-align: center;
}

/*작은화면*/
@media screen and (max-width: 50em) {
	.datediv input {
		height: 30px;
		width: 150px;
	}
}

.search {
	width: 500px;
	height: 40px;
	margin: 0px auto;
	background: #f3ffec;
	border-radius: 3px;
	border: 1px solid #fff;
}

.search input {
	width: 370px;
	padding: 10px 5px;
	float: left;
	color: #ccc;
	border: 0;
	background: transparent;
	border-radius: 3px 0 0 3px;
}

.search input:focus {
	outline: 0;
	background: transparent;
}

.search button {
	position: relative;
	float: right;
	border: 0;
	padding: 0;
	cursor: pointer;
	height: 40px;
	width: 120px;
	color: #fff;
	background: #6ac56d;
	border-left: 15px solid #fff;
	border-radius: 0 3px 3px 0;
}

.search button:hover {
	background: #fff;
	color: #444;
}

.search button:active {
	box-shadow: 0px 0px 12px 0px rgba(225, 225, 225, 1);
}

.search button:focus {
	outline: 0;
}
</style>
</head>
<body>
	<center>
		<div id="mypagehead">
			<h4 align="right" style="margin-right: 100px">
				<a href="MenInBlack.jsp">홈</a> > <a href="mymain.mib">MY PAGE</a> >
				<a href="ceoMypage_Main.mib">구매내역</a>
			</h4>
			<h4>M.I.B 판매 내역입니다.</h4>
		</div>


		<div class="datediv">
			<p>
				<a href="#" class="btn btn-success" role="button">1주</a> <a href="#"
					class="btn btn-success" role="button">1개월</a> <a href="#"
					class="btn btn-success" role="button">3개월</a> <br> <br> <input
					type="date" height="50px">~<input type="date"
					value="2017-03-27"><br>
			</p>
		</div>


	</center>
	<!--엑셀로 다운받기-->
	<div align="right">
		<button type="button" class="btn btn-success">
			엑셀 다운로드 <span class="glyphicon glyphicon-download-alt"
				aria-hidden="true"></span>
		</button>
	</div>


	<!--검색(유저ID,상품이름)-->
	<form class="search" action="">
		<input type="search" placeholder="유저ID,상품이름" required>
		<button type="submit">검색</button>
	</form>

	<!--수량 총매출액 순이익 -->

	<div style="width: 100%; padding-left: 1044px">

		<table class="table table-condensed">
			<tr>
				<th>수량</th>
				<th>총매출액</th>
				<th>순이익</th>
			</tr>
			<!--데이터 받아오는부분  -->
			<tr>
				<th>5</th>
				<td>500000원</td>
				<td>200000원</td>
			</tr>
		</table>
	</div>


	<!--판매내역 테이블  -->
	<div id="total" style="margin-top: 50px">
		<div id="table" style="width: 100%">
			<form name="f1">
				<table class="table">
					<col width="5%">
					<col width="9%">
					<col width="50%">
					<col width="10%">
					<tr>

						<th>상품</th>
						<th>분류</th>
						<th>상품이름</th>
						<th>수량</th>
						<th>재고</th>
						<th>가격</th>
						<th>판매일</th>
						<th>상태</th>
					</tr>

					<tr>
						<td><img alt="not found" src="../images/LOVE.jpg"
							style="width: 100px; height: 100px"></td>
						<td>상의</td>
						<td>컬러-베이지,사이즈-Free</td>
						<td>1</td>
						<td>10</td>
						<td>20000</td>
						<td>2017.01.02</td>
						<td>배송완료</td>
					</tr>
					<tr>
						<td><img alt="not found" src="../images/LOVE.jpg"
							style="width: 100px; height: 100px"></td>
						<td>상의</td>
						<td>컬러-베이지,사이즈-Free</td>
						<td>1</td>
						<td>10</td>
						<td>20000</td>
						<td>2017.01.02</td>
						<td>배송완료</td>
					</tr>
					<tr>
						<td><img alt="not found" src="../images/LOVE.jpg"
							style="width: 100px; height: 100px"></td>
						<td>상의</td>
						<td>컬러-베이지,사이즈-Free</td>
						<td>1</td>
						<td>10</td>
						<td>20000</td>
						<td>2017.01.02</td>
						<td>배송완료</td>
					</tr>
					<tr>
						<td><img alt="not found" src="../images/LOVE.jpg"
							style="width: 100px; height: 100px"></td>
						<td>상의</td>
						<td>컬러-베이지,사이즈-Free</td>
						<td>1</td>
						<td>10</td>
						<td>20000</td>
						<td>2017.01.02</td>
						<td>배송완료</td>
					</tr>
				</table>

			</form>

		</div>

	</div>

	<div class="row" align="center">
		<p>
			<a href="#" class="btn btn-default" role="button"><</a> <a href="#"
				class="btn btn-default" role="button">1</a> <a href="#"
				class="btn btn-default" role="button">2</a> <a href="#"
				class="btn btn-default" role="button">3</a> <a href="#"
				class="btn btn-default" role="button">4</a> <a href="#"
				class="btn btn-default" role="button">></a>
		</p>
	</div>
	</div>

</body>
</html>