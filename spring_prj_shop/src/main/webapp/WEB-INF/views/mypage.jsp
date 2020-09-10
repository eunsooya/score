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
.boardContent{
        width: 90%;
        height: 900px;
        text-align: center;
        margin: 0 auto;
    }
.boardContent ul{

        
        margin-top: 50px;
    }
.boardContent li{
        width: 178px;
        float: left;

        border: 1px solid black;
    }
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
   height:900px;
}
 .y{
font-style:italic;   
font-weight:bold;
color:#212F3C ;
font-size:large;
align:center;
}
.btn{
   width:50px; 
   height:30px; 
   line-height:20px; 
   border:1px gray solid;;
   margin:0 auto;
   background-color:white; 
   text-align:center;
   cursor: pointer; 
   color:#333; 
   transition:all 0.9s, color 0.3;
   margin-left:10px;
   margin-top:10px;
   border-radius:5px;
   text-weight:bold;
}
.btn:hover{
   color:black;
   box-shadow: 0 80px 0 0 rgba(0,0,0,0.25) inset, 0 -80px 0 0 rgba(0,0,0,0.25) inset;
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
    <nav style='margin-top:100px;margin-bottom:300px;width:1920px;'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
              <table style='width:1500px;margin:0 auto; height:385px; '>
             <tr align=center style='width:100px'>       
                  <td valign=top >
                  <h1 style='font-size:2em ;font-style:italic;'>구매내역</h1><br>
                  <div>
                     <ul>
                        <li><h1><a href="mypage" style="color:black;font-style:italic;">구매내역</a></h1><hr></li>
                        <li><h1><a href="mypage_heart" style="color:black;font-style:italic;">찜하기<i class="fas fa-hand-holding-heart"></i></a></h1></li>
                        <li><h1><a href="mypage_mileage" style="color:black;font-style:italic;">마일리지</a></h1></li>
                        <li><h1><a href="mypage_myInfo" style="color:black;font-style:italic;">내 프로필</a></h1></li>
                     </ul>
                  </div>
                  </td>
                  <td>
                    <div >
                     <table width=1300px id='maps' >
                     <thead>
                        <tr>
                           <th colspan=5 align=left   ><div style='font-size:1em;'>&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br>구매내역 <input type=date name=date1 id=date1> - <input type=date name=date2 id=date2>&nbsp;&nbsp;<input type=button class=btn id=sele value="조회"></div></th>
                        </tr>
                        <tr>
                             <th colspan=5 style='font-size:0.3em;' align=left>
                                <ul>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;기본적으로 최근 3개월간 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
                                     <li>&nbsp;&nbsp;&nbsp;&nbsp;주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.
                                </ul>
                             </th>
                        </tr>
                        <tr height=10px>
                           <th colspan=5 style='text-align:left'><br></th>
                        </tr>
                       
                        <tr>
                           <th class=y align=left >&nbsp;&nbsp;&nbsp;&nbsp;주문일자</th><th class=y align=left>상품정보</th><th class=y align=left>악보악기</th><th class=y align=left>악보장르</th><th class=y align=left>상품주문금액</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                     </table>
                     
                  </div>
                  </td>
                  </tr>
               </table>
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
<script type="text/javascript">
$(document).ready(function(){
   var dt=new Date();
   strMonth=dt.getMonth()+1;
   if(strMonth<10){ 
      strMonth="0"+strMonth;
   }
   strDate=dt.getDate();
   if(strDate<10) {
      strDate="0"+strDate;
   }
   str=dt.getFullYear()+"-"+strMonth+"-"+strDate;
   $('#date2').val(str);
   
   sMonth=dt.getMonth()-2;
   if(sMonth<10){
      sMonth="0"+sMonth;
   }
   sDate=dt.getDate();
   if(sDate<10){
      sDate="0"+sDate;
   }
   s=dt.getFullYear()+"-"+sMonth+"-"+sDate;
   $('#date1').val(s);
   
    $.ajax({
         method:'post',
         url:'mypage1',
         datatype:'json',
         data:{date1:$('#date1').val(),date2:$('#date2').val()}
      })
      .done(function(str){
         console.log(str)
         var ar= JSON.parse(str)
         var pstr=''
            console.log(ar);
         $.each(ar,function(ndx,val){
            pstr = '<tr><td>'+val['sales_date']+'</td><td>'+val['sales_name']+'</td><td>'+val['sales_parts']+'</td><td>'+val['sales_genre']+'</td><td>'+val['sales_price']+'</td></tr>'
            $('#maps').append(pstr);
         })
      })
   
})


.on('click','#sele',function(){
   $.ajax({
      method:'post',
      url:'mypage1',
      datatype:'json',
      data:{date1:$('#date1').val(),date2:$('#date2').val()}
   })
   .done(function(str){
	   $('#maps tbody').empty();
      console.log(str)
      var ar= JSON.parse(str)
      var pstr=''
      $.each(ar,function(ndx,val){
        
         pstr = '<tr><td>'+val['sales_date']+'</td><td>'+val['sales_name']+'</td><td>'+val['sales_parts']+'</td><td>'+val['sales_genre']+'</td><td>'+val['sales_price']+'</td></tr>'
         $('#maps tbody').append(pstr);
      })
      if(ar==''){
         alert("주문하신 내역이 존재하지 않습니다");
      }
   })
})

.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>