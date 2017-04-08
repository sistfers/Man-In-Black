<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.eagle.men_in_black.model.MainDto"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MainDto dto = (MainDto) request.getSession().getAttribute("LoginInfo");
SimpleDateFormat df = new SimpleDateFormat("yyyy-mm-dd");
String PRO_SEQ = request.getParameter("PRO_SEQ");
Date date = new Date(); // 현재 날짜 생성
String today = df.format(date);
System.out.println(today);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../../../../../css/Mib.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>:::Q&ADetail:::</title>
<style type="text/css">
.layout {
	width: 790px;
	height: 530px;
	position: relative;
	margin-top: 10px;
	margin-left: 10px;
}

.thumbnail {
	width: 100%;
	height: 100%;
	text-align: center;
}

input, select, textarea {
	border: 1px solid #ccc;
	display: inline-block;
	border-radius: 3px;
	box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.075);
}
</style>
</head>
<body>

<script type="text/javascript">
function windowClose(){
	window.close();
}
</script>

<div class="layout">
	<div class="thumbnail">
	<form>
		<div align="center" style="height: 15%;">
			<h3>Q&A</h3>
		</div>
		<div align="center" style="height: 10%; width: 100%;">
			<div style="float: left; width: 50%; height: 100%;" align="left">
				<p style="margin-left: 30px;">
				공개설정 : 
				<select name=secret size=1 id="secret" >
			        <option value="" selected="selected">공개/비공개</option>
			        <option value="공개">공개</option>
			        <option value="비공개">비공개</option>
		    	</select>
		    	</p>
			</div>
			<div style="float: right; width: 50%; height: 100%;" align="left">
				<p style="margin-left: 30px;">
				문의설정 : 
				<select name="secretz" size=1 id="secretz">
			        <option value="" selected="selected">문의구분</option>
			        <option value="배송문의">배송문의</option>
			        <option value="상품/교환/환불문의">상품/교환/환불문의</option>
		    	</select>
		    	</p>
			</div>
		</div>
		<div style="height: 10%; width: 100%;">
			<div style="height: 100%; width: 50%; float: left;">
				<p align="left" style="margin-left: 30px;">
					작성자 : <input type="text" id="USER_ID" name="USER_ID" value="<%=dto.getUSER_ID() %>" readonly="readonly">
				<input type="hidden" value="<%=PRO_SEQ%>" id="PRO_SEQ" name="PRO_SEQ">
				
				</p>
			</div>
			<div style="height: 100%; width: 50%; float: right;">
				<p align="left" style="margin-left: 30px;">
					작성일 : <input type="text" value="<%=today %>" readonly="readonly">
				</p>
			</div>
		</div>
		<div style="height: 10%; width: 100%;">
			<p align="left" style="margin-left: 30px;">
				제목 : <input type="text" id="title" name="title">
			</p>
		</div>
		<div style="height: 35%; width: 100%;">
			<p><h5 align="left" style="margin-left: 30px;">내용</h5></p>
			<textarea rows="5px" cols="100px" id="QNA_CONTENT" name="QNA_CONTENT"></textarea>
		</div>
		<div class="btn" align="center" style="height: 10%; width:100%;">
			<div style="float: left; width: 50%;">
				<button class="mbtn" style="width: 50%; height: 100%;" onclick="qnawrite()">등록하기</button>
			</div>
			<div style="float: right; width: 50%;">
				<button class="mbtn"" style="width: 50%; height: 100%;" onclick="windowClose()">취소하기</button>
			</div>
		</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	
function qnawrite(){
			var secretz = $("#secretz").find(":selected").val();
			var secret = $("#secret").find(":selected").val();
			var title = $("#title").val();
			var QNA_CONTENT= $("#QNA_CONTENT").val();
			var USER_ID = $("#USER_ID").val();
			var PRO_SEQ =$("#PRO_SEQ").val();
			
			alert("secretz:"+secretz+" : "+
					"secret:"+secret+" : "+
					"title:"+title+" : "+
					"QNA_CONTENT:"+QNA_CONTENT+" : "+
					"USER_ID:"+USER_ID+" : "+
					"PRO_SEQ:"+PRO_SEQ);
					
			$.ajax({
					type : "POST",
					url : "qnaWrite.mib",
					async : true,
					dataType : "html",
					data : {
						"secretz" : secretz,
						"secret" : secret,
						"title" : title,
						"QNA_CONTENT" : QNA_CONTENT,
						"USER_ID" : USER_ID,
						"PRO_SEQ" : PRO_SEQ
					},
					success : function(data) {
						//alert("success " + data);
						var flag = $.parseJSON(data);
						if(flag.result=='success'){
							alert("성공");
							opener.parent.location.reload();
							windowClose();
						} 	

					},
					complete : function(data) {
					},
					
					error : function(xhr, status, error) {
						alert("에러발생");
					}
				});	
};

	

	function windowClose() {
		window.close();
	}
</script>
</body>
</html>