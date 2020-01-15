<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function() {
		$("#myFeed").on("click", function() {
			location.href = "${pageContext.request.contextPath}/feed/myFeed";
		})
		$("#wholeFeed")
				.on(
						"click",
						function() {
							location.href = "${pageContext.request.contextPath}/feed/wholeFeed";
						})
		$("#messenger").on("click", function() {
			location.href = "message/startMsg.msg"
		})

		$("#alarm").on("click", function() {

		})

		$("#fileTest").on("click", function() {
			location.href = "/fileTest";
		})
		$("#scrap").on("click", function() {
			location.href = "feed/scrapFeed";
		})
		$("#friendFeed").on("click", function(){
			location.href = "feed/getFriendFeed";
		})
		$("#myInformation").on("click", function() {
			location.href = "member/goMyInfo";
		})
		
	})
</script>
</head>
<body>

	<button type="button" id="myFeed">내 피드</button>
	<button id="friendFeed">친구피드</button><br>
	<button id="wholeFeed">전체피드</button>
	<button type="button" id="scrap">나의 스크랩피드</button><br>
	<button type="button" id="myInformation">회원 정보 수정</button>
	<button type="button" id="messenger">메신저</button>
	<button type="button" id="alarm">알림</button>
</body>
</html>
