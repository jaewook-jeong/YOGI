<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOGI_header</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"/>
<link href = '../css/header.css' type = 'text/css' rel = 'stylesheet'/> 
</head>
<body>
<form method="post" name = "header_frm">
	<div id = "header">
		<div id = "main_box">
			<div id = "logo_box">
				로고
<!-- 				<img src=""/> -->
			</div>
			
			<div id = "search_box">
				<div id = "search_div">
					<input type="search" onkeypress="if( event.keyCode==13 ){searchEnter();}" name = "findStr" placeholder="원하는 숙소를 검색하세요." value = "${param.findStr }"/> 
<!-- 					<img src=""/> -->
				</div>
			</div>
			
			<div id = "menu_box">
				<ul>
					<c:choose>
						<c:when test="${sessionScope.mEmail eq null}">
							<li><a href = "#">호스트 등록하기</a></li>
							<li><a onclick="popupSignin()" style="cursor: pointer;">로그인</a></li>
							<li><a onclick="popupSignup()" style="cursor: pointer;">회원가입</a></li>
						</c:when>
						
						<c:when test="${sessionScope.mEmail ne null}">
							<li><a href = "#">호스트 등록하기</a></li>
							<li><a href = "#">찜 목록</a></li>
							<li><a href = "#">여행 관리</a></li>
							<li><a href = "#">메시지</a></li>
						</c:when>
					</c:choose>
				</ul>				
			</div><!-- menu_box close -->
			
			<c:if test="${sessionScope.mEmail ne null }">
				<div id = "mypage_img">
					<img src="../img/icon/user.png"/>
				</div><!-- mypage_img close -->			
			</c:if>
			
		</div><!-- main_box close -->
		
		<div id = "filter_box">
			<input type = "button" name = "dDate" id = "d_date" value = "여행 날짜" onclick = "filterBtnsClick(1);"/>
			<input type = "button" name = "hTypeBtn" id = "h_type" value = "집 유형" onclick = "filterBtnsClick(2);"/>
			<input type = "button" name = "dGuestBtn" id = "d_guest" value = "인원" onclick = "filterBtnsClick(3);"/>
			<input type = "button" name = "hPriceBtn" id = "h_price" value = "가격" onclick = "filterBtnsClick(4);"/>
			<input type = "button" name = "etc" id = "etc" value = "필터 추가하기" onclick = "filterBtnsClick(5);"/>
		</div>
		
		<%@include file="./WEB-INF/filter/type.jsp" %>
		<%@include file="./WEB-INF/filter/guest.jsp" %>
		<%@include file="./WEB-INF/filter/price.jsp" %>
		<%@include file="./WEB-INF/filter/filter_plus.jsp" %>
	</div>
	<input type = "text" name = "hType" value = "${(empty param.hType) ? '' : param.hType }"/>
	<input type = "text" name = "dGuest" value = "${(empty param.dGuest) ? 0 : param.dGuest }"/>
	<input type = "text" name = "hPrice" value = "${(empty param.hPrice) ? 0 : param.hPrice }"/>
	<input type = "text" name = "dBedroom" value = "${(empty param.c) ? 0 : param.dBedroom }"/>
	<input type = "text" name = "dBed" value = "${(empty param.dBed) ? 0 : param.dBed }"/>
	<input type = "text" name = "dBathroom" value = "${(empty param.dBathroom) ? 0 : param.dBathroom }"/>
	<input type = "text" name = "dKitchen" value = "${(empty param.dKitchen) ? '' : param.dKitchen }"/>
	<input type = "text" name = "dAc" value = "${(empty param.dAc) ? '' : param.dAc }"/>
	<input type = "text" name = "dWifi" value = "${(empty param.dWifi) ? '' : param.dWifi }"/>
	<input type = "text" name = "dTv" value = "${(empty param.dTv) ? '' : param.dTv }"/>
	<input type = "text" name = "dWasher" value = "${(empty param.dWasher) ? '' : param.dWasher }"/>
	<input type = "text" name = "dParking" value = "${(empty param.dParking) ? '' : param.dParking }"/>
	<input type = "text" name = "dAmenity" value = "${(empty param.dAmenity) ? '' : param.dAmenity }"/>
	<input type = "text" name = "dHdrier" value = "${(empty param.dHdrier) ? '' : param.dHdrier }"/>
	<input type = "text" name = "dSelfcheckin" value = "${(empty param.dSelfcheckin) ? '' : param.dSelfcheckin }"/>
</form>
<%@include file = "./WEB-INF/user/signup.jsp" %>
<%@include file = "./WEB-INF/user/signin.jsp" %>
<script src = "../js/header.js"></script>
</body>
</html>
