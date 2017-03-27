<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style type="text/css">
.ch {
	width: 20px;
	height: 20px
}

td, th {
	text-align: center;
}
</style>
<title>::장바구니::</title>
</head>
<body>
<center>
<div id="mypagehead">
<h4 align="right" style="margin-right: 100px"><a href="MenInBlack.jsp">홈</a> > 
<a href="mymain.mib">MY PAGE</a> > 
<a href="basketlist.mib">장바구니</a></h4>
<h3>MY Order</h3>
<h4>회원님이 M.I.B에서 구매하신 내역입니다.</h4>
</div>
</center>
	<div id="total" style="height: 600px; margin-top: 100px">
		<div id="table" style="width: 90%">
			<form name="f1">
				<table class="table">
					<col width="5%">
					<col width="5%">
					<col width="9%">
					<col width="50%">
					<col width="10%">
					<tr>
						<th><input type="checkbox" id="allCheck"
							style="width: 20px; height: 20px" c></th>
						<th>번호</th>
						<th>이미지</th>
						<th>상품정보</th>
						<th>가격</th>
					</tr>

					<tr>
						<td rowspan="2"><input type="checkbox" onclick="ty(1)"
							value="10000" id="ch1" class="ch"></td>
						<td rowspan="2">1번</td>
						<td rowspan="2"><img alt="not found" src="../images/LOVE.jpg"
							style="width: 100px; height: 100px"></td>
						<td>창거니가 어제 입던 소매티</td>
						<td rowspan="2">10000 Won</td>
					</tr>
					<tr>
						<td>SIZE:L, COLOR: green</td>
					</tr>
					<tr>
						<td rowspan="2"><input type="checkbox" onclick="ty(2)"
							value="20000" id="ch2" class="ch"></td>
						<td rowspan="2">2번</td>
						<td rowspan="2"><img alt="not found" src="../images/LOVE.jpg"
							style="width: 100px; height: 100px"></td>
						<td>창거니가 어제 입던 소매티</td>
						<td rowspan="2">20000 Won</td>
					</tr>
					<tr>
						<td>SIZE:L, COLOR: green</td>
					</tr>
					<tr>
						<td rowspan="2"><input type="checkbox" onclick="ty(3)"
							value="30000" id="ch3" class="ch"></td>
						<td rowspan="2">2번</td>
						<td rowspan="2"><img alt="not found" src="../images/LOVE.jpg"
							style="width: 100px; height: 100px"></td>
						<td>창거니가 어제 입던 소매티</td>
						<td rowspan="2">30000 Won</td>
					</tr>
					<tr>
						<td>SIZE:L, COLOR: green</td>
					</tr>

				</table>

				<table width="50%" align="center" class="table"
					style="margin-top: 100px">

					<tr>
						<td>상품가격</td>
						<td>+</td>
						<td>택배비(5만이상 무료)</td>
						<td>=</td>
						<td>총가격</td>
					</tr>
					<tr>
						<td><input type="text" id="pay" value="" readonly="readonly">
						</td>
						<td>+</td>
						<td><input type="text" id="tag" value="" readonly="readonly">
						</td>
						<td>=</td>
						<td><input type="text" id="top" value="" readonly="readonly">
						</td>
					</tr>
				</table>


			</form>

		</div>
		<div id="결제"></div>
	</div>
	<script type="text/javascript">
		var b = 0;
		function ty(n) {
			if (document.f1.elements[n].checked == true) {
				b += Number(document.f1.elements[n].value);
				document.getElementById('pay').value = b;
				if (b < 50000) {
					document.getElementById('top').value = b + 2500;
					document.getElementById('tag').value = 2500;
				} else {
					document.getElementById('top').value = b;
					document.getElementById('tag').value = "무료";
				}

			} else if (document.f1.elements[n].checked == false) {
				b -= Number(document.f1.elements[n].value);
				document.getElementById('pay').value = b;
				if (b < 50000) {
					document.getElementById('top').value = b + 2500;
					document.getElementById('tag').value = 2500;
				} else {
					document.getElementById('top').value = b;
					document.getElementById('tag').value = "무료";
				}
			}
		}

		$(function() {
			$("#allCheck").click(function() {
				b = 0;
				if ($("#allCheck").prop("checked")) {
					$("input[type=checkbox]").prop("checked", true);
				} else if ($("#allCheck").prop("checked", false)) {
					$("input[type=checkbox]").prop("checked", false);
				}
				for (var i = 1; i < 4; i++) {
					if (document.f1.elements[i].checked == true) {
						b += Number(document.f1.elements[i].value);
						document.getElementById('pay').value = b;
						if (b < 50000) {
							document.getElementById('top').value = b + 2500;
							document.getElementById('tag').value = 2500;
						} else {
							document.getElementById('top').value = b;
							document.getElementById('tag').value = "무료";
						}
					} else {
						document.getElementById('pay').value = 0;
						document.getElementById('top').value = 0;
						document.getElementById('tag').value = 0;

					}
				}
			})

		})
	</script>


</body>
</html>