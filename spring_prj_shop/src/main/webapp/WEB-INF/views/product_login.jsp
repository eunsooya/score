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
<style>
.bottom_img{
   font-family: 'Lobster', cursive;
}
.bottom_img img{
   margin:0 auto;
   width:50px;
   height:50px;
}

.product_title{
    font-size: 30px;
    margin:0 0 60px 160px;
    margin-left:710px;
     font-style:italic;   
   font-weight:bold;
   color:#212F3C
}
.product_button{
    width: 200px;
    height: 30px;
    margin: 10px 10px;
    cursor: pointer; 
    transition:all 0.9s, color 0.3;
    color:#333; 
    border-radius: 5px;
   font-weight:bold;
}
.product_button:hover{
   color:black;
   box-shadow: 0 80px 0 0 rgba(0,0,0,0.25) inset, 0 -80px 0 0 rgba(0,0,0,0.25) inset;
}
.score_img{
   width:600px;
   height:700px;
   border:1px solid black;
   border-radius: 5px;
   
}
.al_img{
   width:220px;
   height:220px;
   border:1px solid black;
   border-radius: 7px;
   margin-left:10px;
}
/* 수량 */
.b{
   border-radius: 7px;
    width:80px;
}
ul li{
   margin-left:20px;
}
.vedio_tbl{
border-collapse:collapse;
}
.vedio_tbl tr{
border-bottom:1px solid black;
}
.vedio_tbl tr td{
padding:5px 80px;

}
.block{
margin:0 50px;
float:left;

}
.fab{
	color:red;
}
</style>


<body>
<input type=hidden id=sid value="${s_id}">
<input type=hidden id=mid value="${home.m_id}">
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
    <nav style='margin-top:50px;margin-bottom:300px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
<div class=product_title><i class="fas fa-music"></i>&nbsp;${score.score_name}<input type=hidden id=sname value="${score.score_name}"></div>
       <div class=block>
	   <table class=vedio_tbl>
	   		<tr>
	   			<td style='font-size:20px;'><i class="fab fa-youtube"></i>&nbsp;관련동영상</td>
	   		</tr>
	   		<tr>
	   			<td><iframe width="400" height="300" src="${score.score_vedio}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
	   		</tr>
	   		<tr>
	   			<td style='font-size:20px;'><i class="fab fa-youtube"></i>&nbsp;추천동영상</td>
	   		</tr>
	   		<tr>
	   			<td><iframe width="400" height="300" src="${vedio.score_vedio}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
	   		</tr>
	   </table>
   </div>
     <div class=block>
    <table style='margin: 0 auto;'>
        <tr>
            <td><img class=score_img src='resources/image2/${score.s_id}s.jpg'></td>
            <td valign=top><img class=al_img src='resources/image/${score.s_id}.gif'><br>
                <ul>
                    <li><b>곡명</b>:&nbsp;${score.score_name}</li>
                    <li><b>가수명</b>:&nbsp;${score.score_singer}</li>
                    <li><b>악기</b>:&nbsp;${score.score_parts}</li>
                    <li><b>장르</b>:&nbsp;${score.score_genre}</li>
                    <li><b>가격</b>:&nbsp;${score.score_price}<input type=hidden id=price value='${score.score_price}'></li>
                    <li><b>제조사</b>:&nbsp;(주)승미와은수</li>
                    <li><b>서비스기간</b>:&nbsp;구매일로부터 1년</li>
                    <li><b>수량:</b>&nbsp;<input class=b type=number id=count min=1></li>
                    <br><br><input type=button class=product_button value='구매' id=buys><br>
                    <input type=button class=product_button value='장바구니' id=cart><br>
                    <input type=button class=product_button value='${heart.s_id}' id=heart><br>
                    <input type=button class=product_button value='목록으로 ' id=content>
                </ul>
            </td>
        </tr>
    </table>
    </div>
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
	$('#count').val(1);
   if($('#heart').val()==$('#sid').val()){
      $('#heart').val('찜함');
      console.log($('#heart').val());
   }else{
      $('#heart').val('찜하기');
   }
})
.on('click','#heart',function(){
   if($('#heart').val()=='찜함'){
      $.ajax({
         method:'post',
         datatype:'json',
         url:'heart_delete',
         data:{s_id:$('#sid').val(),m_id:$('#mid').val()}
      })
      .done(function(str){
            $('#heart').val('찜하기');
         })
   }else{
      $.ajax({
            method:'post',
            datatype:'json',
            url:'heart_insert',
            data:{s_id:$('#sid').val(),m_id:$('#mid').val(),s_name:$('#sname').val()}
         })
         .done(function(str){
            $('#heart').val('찜함');
         })
   }
})



.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
.on('click','#buys',function(){
   if($('#count').val()==""){
      alert('수량을 선택해주세요.')
   }else{
      $(location).attr('href','pay_product?s_id='+$('#sid').val()+'&cnt='+$('#count').val());
   }
   
})
.on('click','#cart',function(){
   if($('#count').val()==""){
       alert('수량을 선택해주세요.')
      }else{
   var a= confirm("상품을 더 보시겠어요?");
      if(a==false){
         var bool="a";
         $(location).attr('href','cart_move?s_id='+$('#sid').val()+'&count='+$('#count').val()+'&price='+$('#price').val()+'&bool='+bool)
      } else if(a==true){
         var bool="b";
         $(location).attr('href','cart_move?s_id='+$('#sid').val()+'&count='+$('#count').val()+'&price='+$('#price').val()+'&bool='+bool)
      }
      }
})


.on('click','#content',function(){
   $(location).attr('href','products?pageNum=1');
})

</script>
</html>