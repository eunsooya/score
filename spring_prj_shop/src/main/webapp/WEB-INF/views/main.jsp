<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCORE</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="resources/js/arrow.jsp"></script>
<script src="resources/js/bigbig.jsp"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/base/base.css?after">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style>
.bottom_img{
   font-family: 'Lobster', cursive;
}
.bottom_img img{
   margin:0 auto;
   width:50px;
   height:50px;
}
.sideBox{
float: left;
margin: 10px 30px;
	width:60px;
	height:60px
}
</style>


<body>
<div id=toptop style='position:relative;float:left'>
  <nav class=title_nav>
        <div class=title_logo > <a href="home"><img class='logos' src='resources/logoimg/logo.gif'></a></div>
        <div class=title_search><fieldset><input type="search" class=inp id=search><button type="button" id=ok class=button><i class="fa fa-search"></i></button></fieldset></div>
            <ul class=title_action>
                <li><i class="fas fa-sign-in-alt"></i>&nbsp;<a href='login'>로그인</a></li>
                <li><i class="fas fa-sign"></i>&nbsp;<a href='agree'>회원가입</a></li>
                <li><i class="fas fa-shopping-cart">&nbsp;</i><a href='cart'>장바구니</a></li>
                <li><i class="fas fa-spa">&nbsp;</i><a href='login'>마이페이지</a></li>
                <li><i class="far fa-question-circle">&nbsp;</i><a href='fqa_list?pageNum=1'>고객문의</a></li>
            </ul>
    </nav>
    <ul class=kate>
        <li><a href='best'>인기악보</a></li>
        <li><a href='new'>최신악보</a></li>
        <li><a href='products?pageNum=1'>악기별</a>
            <ul class=kate_sub1>
                <li><a href='productssel?pageNum=1&products=피아노'>피아노</a></li>
                <li><a href='productssel?pageNum=1&products=기타'>기타</a></li>
                <li><a href='productssel?pageNum=1&products=베이스'>베이스</a></li>
                <li><a href='productssel?pageNum=1&products=드럼'>드럼</a></li>
            </ul>
        </li>
        <li><a href='genre?pageNum=1'>장르별</a>
            <ul class=kate_sub1>
                <li><a href='genresel?pageNum=1&genre=가요'>가요</a></li>
                <li><a href='genresel?pageNum=1&genre=Pop'>Pop</a></li>
                <li><a href='genresel?pageNum=1&genre=OST'>OST</a></li>
                <li><a href='genresel?pageNum=1&genre=Ballad'>Ballad</a></li>
            </ul>
        </li>
        <li><a href='notice_list?pageNum=1'>공지사항</a></li>
    </ul>
    <nav style='margin-bottom:200px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto; 넣어주면 가운데정렬됨 -->
          <nav class=middle_nav>
        <!-- 슬라이드쇼 -->
        <div id="slide">
            <input type="radio" name="pos" id="pos1" checked>
            <input type="radio" name="pos" id="pos2">
            <input type="radio" name="pos" id="pos3">
            <input type="radio" name="pos" id="pos4">
            <ul>
              <li onclick="location.href='product?s_id=13'"><img src="resources/image/i.jpg" ></li>
              <li onclick="location.href='product?s_id=27'"><img src="resources/image/todiefor.jpg"></li>
              <li onclick="location.href='product?s_id=21'"><img src="resources/image/icecream.jpg"></li>
              <li onclick="location.href='product?s_id=14'"><img src="resources/image/홀로.jpg"></li>
              
            </ul>
            <p class="pos">
              <label for="pos1"></label>
              <label for="pos2"></label>
              <label for="pos3"></label>
              <label for="pos4"></label>
            </p>
          </div>
    </nav>
    <nav product_nav>
        <div class="bot">
            <div class="items">
                <div class="itemTitle">최신가요&nbsp;<a href='new' style="font-size: small; ">더보기></a></div>
                <c:forEach items="${newScore}" var="n">
                <div class="itemBox" onclick="location.href='product?s_id=${n.s_id}';" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
                       <img class="coverImg" src="resources/image/${n.s_id}.gif">
                       <div class="imgInfo">${n.score_name}</div>
                       <div class="imgInfo">${n.score_singer}</div>
                </div>
                </c:forEach>
            </div>
            <div class="items">
                <div class="itemTitle">인기가요&nbsp;<a href='best' style="font-size: small; ">더보기></a></div>
                <c:forEach items="${bestScore}" var="b">
                <div class="itemBox" onclick="location.href='product?s_id=${b.s_id}';" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
                       <img class="coverImg" src="resources/image/${b.s_id}.gif" >
                       <div class="imgInfo">${b.sales_name}</div>
                       <div class="imgInfo">${b.singer}</div>
                </div>
                </c:forEach>
            </div>
            <div class="items">
                <div class="itemTitle">장르별 - 가요&nbsp;<a href='genresel?pageNum=1&genre=Ballad' style="font-size: small;">더보기></a></div>
                <c:forEach items="${gayoBestScore}" var="g">
                <div class="itemBox" onclick="location.href='product?s_id=${g.s_id}';" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
                       <img class="coverImg" src="resources/image/${g.s_id}.gif" >
                       <div class="imgInfo">${g.sales_name}</div>
                       <div class="imgInfo">${g.singer}</div>
                </div>
                </c:forEach>
            </div>
        </div>
        
    </nav>
        <!-- 테이블 끝나는 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
    </nav>



    <nav style='margin:100px 0 0 0;color:grey;position:absolute;bottom:0;background:#10284a;font-size:13px ;float:left;
             display: flex;justify-content: space-between;align-items: center;height:150px;width:1920px;'>
          <div style='margin-left:100px'>
             <ul style='display:flex'>
                <li>주식회사 승미와은수[악보]</li>
                <li>   |  대표자 : 이승미</li>
                <li>   |  충청남도 천안시 서북구 성정공원5로 35 6층 : @휴먼교육센터</li>
             </ul>
             <ul style='display:flex'>
                <li>사업자등록번호 : 202-04-20916 </li>
                <li>   |   통신판매업신고 : 제 2020-천안서북구-0001호</li>
             </ul>
             <ul style='display:flex;margin-top:10px'>
                <li>Copyright(c) WIKIWIKI Inc. All Rights Reserved. Hosting by THREEWAY.</li>
             </ul>
          </div>
          <div>
             <ul style='display:flex;margin-top:10px'>
                <li>고객센터 (평일 9AM ~ 6PM)</li>
               <li>일반문의 010-8590-1142  |  주문제작/조옮김 문의 010-3356-2014</li>
             </ul>
          </div>
          <div class='bottom_img' style='margin-right:100px'>
             <img src='resources/image/bottom1.gif'> <img src='resources/image/bottom2.jpg'> <img src='resources/image/bottom3.jpg'>
          </div>
    </nav>
   </div>
      <div id="gotop">
      	<div><img src="resources/image/top.png" class=arrow onclick="location.href ='#toptop';"></div>
      </div>
   <script type="text/javascript">initMoving(document.getElementById("gotop"), 610, 50, 50);</script>
</body>
<script>
$(document)
.on('click','#ok',function(){
	$(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>