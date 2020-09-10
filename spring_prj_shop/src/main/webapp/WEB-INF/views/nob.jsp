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
.items{
   height:270px
}
</style>

<body>
<div id=toptop style='position:relative;float:left'>
  <nav class=title_nav>
        <div class=title_logo > <a href="home"><img class='logos' src='resources/logoimg/logo.png'></a></div>
        <div class=title_search><fieldset><input type="search" class=inp id=search><button type="button" id=ok class=button><i class="fa fa-search"></i></button></fieldset></div>
            <ul class=title_action>
                <li><i class="fas fa-sign-in-alt"></i>&nbsp;<a href='login'>로그인</a></li>
                <li><i class="fas fa-sign"></i>&nbsp;<a href='agree'>회원가입</a></li>
                <li><i class="fas fa-shopping-cart">&nbsp;</i><a href='login'>장바구니</a></li>
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
    <nav class=content_divss style='margin-bottom:300px;width:1920px;font-size:15px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
       <div class=content_div>
                    최신음악
                </div>
                <div class="items" style='margin:0 auto'>
               
                <c:forEach items="${newScore}" var="n">
                <div class="itemBox" onclick="location.href='product?s_id=${n.s_id}';" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
                       <img class="coverImg" src="resources/image/${n.s_id}.gif">
                       <div class="imgInfo">${n.score_name}</div>
                       <div class="imgInfo">${n.score_singer}</div>
                </div>
                </c:forEach>
            </div>
                <div class=score_all >
                    <table class="tbl" align="center" >
                        <thead>
                            <tr class=table_tr>
                                <th class='table_title1'>번호</th><th>사진</th><th class='table_title2'>곡 제목</th><th class='table_title2'>가수</th><th class='table_title1'>가격</th><th class='table_title1'>악기</th><th class='table_title1'>장르</th>
                            </tr>
                        </thead>
                        <tbody>
                       <tr>
                       <td colspan=6 align="center">${noid}에 대한 검색결과가 없습니다.</td>
                       <td><a href='products?pageNum=1'>목록으로</a></td>
                       <tr>
                        </tbody>
                    </table>
                </div>
        <!-- 테이블 끝나는 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
    </nav>
    <nav style='margin:100px 0 0 0;color:grey;position:absolute;bottom:0;background:#10284a;font-size:13px ;float:left;
             display: flex;justify-content: space-between;align-items: center;height:150px;width:1920px;'>
          <div style='margin-left:100px'>
             <ul style='display:flex'>
                <li>주식회사 악보스코어</li>
                <li>   |  대표자 : 이승미</li>
                <li>   |  인천광역시 미추홀구 석정로 202(도화동, 아트팩토리) B1F,3F카카오톡 : @풀스코어</li>
             </ul>
             <ul style='display:flex'>
                <li>사업자등록번호 : 105-87-90002 </li>
                <li>   |   통신판매업신고 : 제 2019-인천남구-0000호</li>
             </ul>
             <ul style='display:flex;margin-top:10px'>
                <li>Copyright(c) WIKIWIKI Inc. All Rights Reserved. Hosting by THREEWAY.</li>
             </ul>
          </div>
          <div>
             <ul style='display:flex;margin-top:10px'>
                <li>고객센터 (평일 9AM ~ 6PM)</li>
               <li>일반문의 010-8590-1142  |  주문제작/조옮김 문의 02-6969-7778</li>
             </ul>
          </div>
          <div class='bottom_img' style='margin-right:100px'>
             <img src='resources/image/bottom1.gif'> <img src='resources/image/bottom2.jpg'> <img src='resources/image/bottom3.jpg'>
          </div>
    </nav>
   </div>
</body>
<script>
$(document).ready(function(){
})
.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>