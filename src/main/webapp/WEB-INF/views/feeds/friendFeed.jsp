<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<link rel="stylesheet" href="/resources/css/nav.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<style>
<<<<<<< HEAD
	#wrapper{
		border:1px solid red;
		margin:auto;
		width:70vw;
	}

	.feed{
		border:1px solid blue;
	}
	.dz-default {
		border: 2px solid black;
	}
	
	.dz-preview {
		display: none;
	}
	
	.carousel-item {
		margin: auto;
		text-align: center;
	}
	
/* 	.carousel-inner { */
/* 		width: 100vw; */
/* 	} */
	
	.carousel-item * {
		width: 600px;
		height: 600px;
	}
	
	.btnss * {
		width: 100px;
		height: 100px;
	}
	.likeImg>img{
		width:50px;
		height:50px;
	}
	.bookmarkImg>img{
		width:50px;
		height:50px;
	}
	.row{
		width:100%;
		margin:0px;
	}
	
=======
#wrapper {
	border: 1px solid red;
	margin: auto;
	/* width: 50vw; */
}
html, body {
	padding: 0px;
	margin: 0px;
}

* {
	box-sizing: border-box;
}
.feed {
	border: 1px solid blue;
}

.dz-default {
	border: 2px solid black;
}

.dz-preview {
	display: none;
}

.carousel-item {
	margin: auto;
	text-align: center;
}

/* 	.carousel-inner { */
/* 		width: 100vw; */
/* 	} */
.carousel-item * {
	width: 677px;
	height: 677px;
}

.btnss * {
	width: 100px;
	height: 100px;
}

.likeImg>img {
	width: 30px;
	height: 30px;
	margin-left: 10px;
}

.bookmarkImg>img {
	width: 30px;
	height: 30px;
	margin-left: 10px;
}

.row {
	margin: 0px;
}
.profile{
	display:flex;
}
.profileImg{
	width:50px;
	height:50px;
}
.profileImg>img{
	width: 100%;
	height:100%;
	margin: 0px;
}
.contents,.profile{
	margin-top:10px; 
	margin-left:10px;
	margin-bottom:10px;
}
/* All Device */
/* 모든 해상도를 위한 공통 코드를 작성한다. 모든 해상도에서 이 코드가 실행됨. */

/* Mobile Device */
/* 768px 미만 해상도의 모바일 기기를 위한 코드를 작성한다. 모든 해상도에서 이 코드가 실행됨. 미디어 쿼리를 지원하지 않는 모바일 기기를 위해 미디어 쿼리 구문을 사용하지 않는다. */

/* Tablet &amp; Desktop Device */
@media all and (min-width:768px) {
   /*     사용자 해상도가 768px 이상일 때 이 코드가 실행됨. 테블릿과 데스크톱의 공통 코드를 작성한다. */
   #wrapper{
    	width: 100%;
    }
}

@media all and (max-width:500px) {
   /*     사용자 해상도가 768px 이하일 때 이 코드가 실행됨. 테블릿과 데스크톱의 공통 코드를 작성한다. */
 	#wrapper{
    	max-width: 750px;
    }
}

/* Tablet Device */
@media all and (min-width:500px) and (max-width:768px) {
   /*     사용자 해상도가 768px 이상이고 1024px 이하일 때 이 코드가 실행됨. 아이패드 또는 비교적 작은 해상도의 랩탑이나 데스크톱에 대응하는 코드를 작성한다. */
    #wrapper{
    	max-width: 700px;
    }
}

/* Desktop Device */
@media all and (min-width:1025px) {
   /*     사용자 해상도가 1025px 이상일 때 이 코드가 실행됨. 1025px 이상의 랩탑 또는 데스크톱에 대응하는 코드를 작성한다. */
    #wrapper{
    	max-width: 680px;
    }
}
</style>
<script>
	var page = 1;  //페이징과 같은 방식이라고 생각하면 된다. 
	
	$(function(){  //페이지가 로드되면 데이터를 가져오고 page를 증가시킨다.
	    if(page==1){ 
	     page++;
	    }else{
	    	getList(page);
	    	page++;
	    }
	}); 
	 
	$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
		console.log($(window).scrollTop());
		console.log($(document).height());
		console.log($(window).height());
		if($(window).scrollTop() >= $(document).height()-$(window).height()- 5 ){
			console.log("스크롤 감지");
			if(page==1){ 
			     page++;
			    }else{
			    	getList(page);
			    	page++;
			    }
	     } 
	});

	$(window).scroll(
			function() { //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
				if ($(window).scrollTop() >= $(document).height()
						- $(window).height()) {
					if (page == 1) {
						page++;
					} else {
						getList(page);
						page++;
					}
				}
			});

	function getList(page) {
		$
				.ajax({
					type : 'POST',
					dataType : 'json',
					data : {
						"page" : page
					},
					url : "/feed/getFriendFeedAjax",
					dataType : "JSON"
				})
				.done(
						function(data) {
							if (data.result == 'false') {
								console.log("false");
								return 'false';
							}

							var list = JSON.parse(data.list);
							console.log(list);
							var mediaList = JSON.parse(data.mediaList);
							var replyList = JSON.parse(data.replyList);
							var likeCheckList = JSON.parse(data.likeCheckList);
							var bookmarkCheckList = JSON
									.parse(data.bookmarkCheckList);

							for (var i = 0; i < list.length; i++) {

								var feed = $("<div class='feed'></div>");
								var nick = $("<div class='row nickname'></div>");
								nick.append(list[i].nickname);

								var media = $("<div class='row media'></div>");

								var CEI = $("<div id='carouselExampleIndicators' class='carousel slide' data-interval='false'></div>");

								var olCEI = $("<ol class='carousel-indicators'></ol>");

								for (var m = 0; m < mediaList[i].length; m++) {
									var liCEI = $("<li data-target='#carouselExampleIndicators'></li>");
									if (m == 0) {
										liCEI.attr("data-slide-to", 0);
										liCEI.addClass("active");
									} else {
										liCEI.attr("data-slide-to", m);
									}
									olCEI.append(liCEI);
								}
								CEI.append(olCEI);

								var ci = $("<div class='carousel-inner'>");

								for (var m = 0; m < mediaList[i].length; m++) {
									var divCI = $("<div class='carousel-item'></div>");
									if (m == 0) {
										divCI.addClass("active");
										divCI.append(mediaList[i][m]);
									} else {
										divCI.append(mediaList[i][m]);
									}
									ci.append(divCI);
								}
								ci
										.append("<a class='carousel-control-prev' href='#carouselExampleIndicators' role='button' data-slide='prev'>");
								ci
										.append("<span class='carousel-control-prev-icon' aria-hidden='true'></span> <span class='sr-only'>Previous</span></a>");
								ci
										.append("<a class='carousel-control-next' href='#carouselExampleIndicators' role='button' data-slide='next'>");
								ci
										.append("<span class='carousel-control-next-icon' aria-hidden='true'></span> <span class='sr-only'>Next</span></a>");

								media.append(ci);
								feed.append(nick);
								feed.append(media);

								var contents = $("<div class='row contents' style='height:100px'></div>");
								contents.append(list[i].contents);

								var replys = $("<div class='row replys'></div>");
								for (var r = 0; r < replyList[i].length; i++) {
									var reply = $("<div class='row reply'></div>");
									reply.append(replyList[i][r]);
									replys.append(reply);
								}

								feed.append(contents);
								feed.append(replys);

								var btns = $("<div class='row btns'></div>");

								if (likeCheckList[i] == 0) {
									var imgBTNS = $("<img class='likeBtn' value='likeBefore' src='${pageContext.request.contextPath }/resources/images/likeBefore.png'>");
									var spanBTNS = $("<span class='likeImg' ></span>");
									imgBTNS.attr("seq", list[i].feed_seq);
									spanBTNS.append(imgBTNS);
									spanBTNS.attr("seq", list[i].feed_seq);

									var aBTNS = $("<a href='#' class='like' onclick='return false'></a>");
									aBTNS.attr("id", list[i].feed_seq);
									aBTNS.append(spanBTNS);
									btns.append(aBTNS);
								} else {
									var imgBTNS = $("<img class='likeBtn' value='likeAfter' src='${pageContext.request.contextPath }/resources/images/likeAfter.png'>");
									var spanBTNS = $("<span class='likeImg'></span>");
									imgBTNS.attr("seq", list[i].feed_seq);
									spanBTNS.append(imgBTNS);
									spanBTNS.attr("seq", list[i].feed_seq);

									var aBTNS = $("<a href='#' class='like' onclick='return false'></a>");
									aBTNS.attr("id", list[i].feed_seq);
									aBTNS.append(spanBTNS);
									btns.append(aBTNS);
								}

								if (bookmarkCheckList[i] == 0) {
									var imgBTNS = $("<img class='bookmarkBtn' value='bookmarkBefore' src='${pageContext.request.contextPath }/resources/images/bookmarkBefore.png'>");
									var spanBTNS = $("<span class='bookmarkImg' ></span>");
									imgBTNS.attr("seq", list[i].feed_seq);
									spanBTNS.append(imgBTNS);
									spanBTNS.attr("seq", list[i].feed_seq);

									var aBTNS = $("<a href='#' class='bookmark' onclick='return false'></a>");
									aBTNS.attr("id", list[i].feed_seq);
									aBTNS.append(spanBTNS);
									btns.append(aBTNS);
								} else {
									var imgBTNS = $("<img class='bookmarkBtn' value='bookmarkAfter' src='${pageContext.request.contextPath }/resources/images/bookmarkAfter.png'>");
									var spanBTNS = $("<span class='bookmarkImg' ></span>");
									imgBTNS.attr("seq", list[i].feed_seq);
									spanBTNS.append(imgBTNS);
									spanBTNS.attr("seq", list[i].feed_seq);

									var aBTNS = $("<a href='#' class='bookmark' onclick='return false'></a>");
									aBTNS.attr("id", list[i].feed_seq);
									aBTNS.append(spanBTNS);
									btns.append(aBTNS);
								}
								feed.append(btns);
								$("#wrapper").append(feed);
							}
							;
						})
	}
</script>
</head>
<body>
	<jsp:include page="/resources/jsp/nav.jsp" />
	<div id="wrapper" style="position: relative; top: 62px">
		<!-- <h1>친구피드</h1> -->
		<c:choose>
			<c:when test="${fn:length(list) <1}">
				<div>게시물이 없습니다.</div>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="feed" varStatus="status">
					<div class="feed">
						<div class="row profile">
						<div class="row profileImg">
							${profile_imgList[status.index]} 
						</div>
						<div class="row profileNickname" style="margin-left: 11px; margin-top: 11px;">							
							${feed.nickname }						
						</div>
						</div>
						<div class="row media">
							<div id="carouselExampleIndicators" class="carousel slide"
								data-interval="false">
								<ol class="carousel-indicators">
									<c:forEach items="${mediaList[status.index] }" var="media"
										varStatus="status1">
										<c:if test="${status1.index ==0}">
											<li data-target="#carouselExampleIndicators"
												data-slide-to="0" class="active"></li>
										</c:if>
										<c:if test="${status1.index !=0}">
											<li data-target="#carouselExampleIndicators"
												data-slide-to="${status.index }"></li>
										</c:if>
									</c:forEach>
								</ol>
								<div class="carousel-inner">
									<c:forEach items="${mediaList[status.index] }" var="media"
										varStatus="status1">
										<c:if test="${status1.index ==0}">
											<div class="carousel-item active">${media }</div>
										</c:if>
										<c:if test="${status1.index !=0}">
											<div class="carousel-item">${media }</div>
										</c:if>
									</c:forEach>
									<a class="carousel-control-prev"
										href="#carouselExampleIndicators" role="button"
										data-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="carousel-control-next"
										href="#carouselExampleIndicators" role="button"
										data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
							</div>
						</div>
						<div class="row contents" style="height: 100px;">
							${feed.contents }</div>
						<div class="row replys">
							<c:forEach items="${replyList[status.index]}" var="reply">
								<div class="row reply">${reply }</div>
							</c:forEach>
						</div>
						<div class="row btns" style="">
							<c:choose>
								<c:when test="${likeCheckList[status.index]==0 }">
									<a href="#" id="${feed.feed_seq }" class="like"
										onclick="return false"> <span class="likeImg"
										seq="${feed.feed_seq }"><img class="likeBtn"
											seq="${feed.feed_seq }" value="likeBefore"
											src="${pageContext.request.contextPath }/resources/images/likeBefore.png"></span>
									</a>
								</c:when>
								<c:otherwise>
									<a href="#" id="${feed.feed_seq }" class="like"
										onclick="return false"> <span class="likeImg"
										seq="${feed.feed_seq }"><img class="likeBtn"
											seq="${feed.feed_seq }" value="likeAfter"
											src="${pageContext.request.contextPath }/resources/images/likeAfter.png"></span>
									</a>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${bookmarkCheckList[status.index]==0 }">
									<a href="#" id="${feed.feed_seq }" class="bookmark"
										onclick="return false"> <span class="bookmarkImg"
										seq="${feed.feed_seq }"><img class="bookmarkBtn"
											seq="${feed.feed_seq }" value="bookmarkBefore"
											src="${pageContext.request.contextPath }/resources/images/bookmarkBefore.png"></span>
									</a>
								</c:when>
								<c:otherwise>
									<a href="#" id="${feed.feed_seq }" class="bookmark"
										onclick="return false"> <span class="bookmarkImg"
										seq="${feed.feed_seq }"><img class="bookmarkBtn"
											seq=" ${feed.feed_seq }" value="bookmarkAfter"
											src="${pageContext.request.contextPath }/resources/images/bookmarkAfter.png"></span>
									</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>

	<script>
		$(document).on("click",".like",function() {
			var seq = $(this).attr("id");
			var likeCheck = $(".likeBtn[seq=" + seq + "]").attr("value");
				console.log(seq);
				console.log(likeCheck);
			if (likeCheck == "likeBefore") { //아직 좋아요를 안눌러있는 상태에서 좋아요했을때
				$.ajax({
					type : "POST",
					url : "/feed/insertLike",
					data : {
						feed_seq : seq
							}
						})
				.done(function() {
					$(".likeImg[seq="+ seq + "]").html("<img class=\"likeBtn\" seq=\""+seq+"\" value=\"likeAfter\" src=\"${pageContext.request.contextPath }/resources/images/likeAfter.png\">");
						})
			} else {
				$.ajax({
					type : "POST",
					url : "/feed/deleteLike",
					data : {
						feed_seq : seq
							}
						})
				.done(function() {
					$(".likeImg[seq="+ seq + "]").html("<img class=\"likeBtn\" seq=\""+seq+"\" value=\"likeBefore\" src=\"${pageContext.request.contextPath }/resources/images/likeBefore.png\">");
					})
					}
			})

		$(document).on("click",".bookmark",function() {
			var seq = $(this).attr("id");
			var bookmarkCheck = $(".bookmarkBtn[seq=" + seq + "]").attr("value");
			if (bookmarkCheck == "bookmarkBefore") { //아직 좋아요를 안눌러있는 상태에서 좋아요했을때
				$.ajax({
					type : "POST",
					url : "/feed/insertBookmark",
					data : {
					feed_seq : seq
							}
						})
				.done(function() {
					$(".bookmarkImg[seq="+ seq + "]").html("<img class=\"bookmarkBtn\" seq=\""+seq+"\"  value=\"bookmarkAfter\" src=\"${pageContext.request.contextPath }/resources/images/bookmarkAfter.png\">");
					})
				} else {
					$.ajax({
						type : "POST",
						url : "/feed/deleteBookmark",
						data : {
						feed_seq : seq
								}
						})
					.done(function() {
						$(".bookmarkImg[seq="+ seq + "]").html("<img class=\"bookmarkBtn\" seq=\""+seq+"\"  value=\"bookmarkBefore\" src=\"${pageContext.request.contextPath }/resources/images/bookmarkBefore.png\">");
						})
						}
					})
	</script>
</body>
</html>