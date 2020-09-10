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

.join tr td{
   text-align:right;
}

.using_point{
	font-size:1em;

}
.using_point{
   font-size:1em;

}

h3{
   font-style:italic;   
   font-weight:bold;
   font-size:xx-large;
}

.using_point{
   font-style:italic;
   font-size:large;
   color:#212F3C
}

#tbl tr td{
   padding:5px 10px;
}

.u{
   font-style:italic;   
   font-weight:bold;
   color:#212F3C ;

}

</style>

<body>
<div id=toptop style='position:relative;float:left'>
  <nav class=title_nav>
       <div class=title_logo > <a href="home"><img class='logos' src='resources/logoimg/logo.gif'></a></div>
       <div class=title_search><fieldset><input type="search" class=inp id=search><button type="button" id=ok class=button><i class="fa fa-search"></i></button></fieldset></div>
            <ul class=title_action>
               <li><i class="fas fa-user-circle"></i>&nbsp;${home.member_name}</li>
                <li><i class="fas fa-sign-in-alt"></i>&nbsp;<a href='logout'>로그아웃</a></li>
                <li><i class="fas fa-shopping-cart">&nbsp;</i><a href='cart'>장바구니</a></li>
                <li><i class="fas fa-spa">&nbsp;</i><a href='mypage'>마이페이지</a></li>
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
    <nav style='margin-top:100px;margin-bottom:100px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
            <table style='width:1500px;margin:0 auto; height:385px'>
             <tr align=center style='width:100px'>     
                  <td valign=top>
                  <h1 style='font-size:2em ;font-style:italic;'>마일리지</h1><br>
                  <div>
                     <ul>
                      <li><h1><a href="mypage" style="color:black;font-style:italic;">구매내역</a></h1></li>
                        <li><h1><a href="mypage_heart" style="color:black;font-style:italic;">찜하기<i class="fas fa-hand-holding-heart"></i></a></h1></li>
                        <li><h1><a href="mypage_mileage" style="color:black;font-style:italic;">마일리지</a></h1><hr></li>
                        <li><h1><a href="mypage_myInfo" style="color:black;font-style:italic;">내 프로필</a></h1></li>
                     </ul>
                  </div>
                  </td>
                  <td>
                  <div>
                  <table width=1300px id=tbl>
                     <ul style='margin:0 0 60px 350px; text-align:left'>
                        <li><h3>적립금☺</h3></li>
                        <li class=using_point></li>
                        <li><hr></li>
                     </ul>
                     <table class='aqua' style='width:600px; '>
                        <tr>
                        <td class=u>총 적립금</td><td>${basemile}&nbsp;Point</td>
                        </tr>
                        <tr>
                        <td class=u>사용된 적립금</td><td>${haha}&nbsp; Point</td>
                        </tr>
                        
                     </table>
                     <br>
                     <table style='width:600px'>
                        <tr>
                           <td class=u>주문날짜</td><td class=u>적립금</td>
                        </tr>
                        <c:forEach items="${mileage}" var="mile">
                        <tr>
                           <td>${mile.sale_mile_date}</td><td>${mile.sale_mile}</td>
                        </tr>
                        </c:forEach>
                     </table>
                  </table>
                  </div>
                  </td>
                  </tr>
                  </table>
        <!-- 테이블 끝나는 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
    </nav>
    <nav style='margin:100px 0 0 0;color:grey;bottom:0;background:#10284a;font-size:13px ;float:left;
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
      	<div>
      	
	      	<c:forEach items="${sideImg}" var="side">
	      	<img class="sideImg" src="resources/image/${side.s_id}.gif" onclick="location.href='product?s_id=${side.s_id}';">
			</c:forEach>
		</div>
      	<div><img src="resources/image/top.png" class=arrow onclick="location.href ='#toptop';"></div>
      </div>
   <script src="resources/js/arrow.jsp"></script>
   <script type="text/javascript">initMoving(document.getElementById("gotop"), 200, 50, 50);</script>
</body>
<script>
$(document)
.ready(function(){
	mile1=$('.aqua tr:eq(0) td:eq(1)').text()
	console.log(mile1)
	mile2=$('.aqua tr:eq(1) td:eq(1)').text()
	console.log(mile2)
	a=parseInt(mile1)-parseInt(mile2);
	$('.using_point').text("사용가능한 적립금은 "+a +" Point 입니다")
	
	
})
.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})

</script>
</html>