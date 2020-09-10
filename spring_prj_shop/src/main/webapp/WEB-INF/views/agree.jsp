<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

h1{
   font-style:italic;   
   font-weight:bold;
   font-size:xx-large;
}

h3{
   font-style:italic;   
   font-weight:bold;
}

.btngo{
   display:block; 
   width:100px; 
   height:40px; 
   line-height:40px; 
   border:1px gray solid;;
   float:right;
   align-items: center; /*센터맞추기 */
   margin:0 auto;
   background-color:white; 
   text-align:center;
   cursor: pointer; 
   color:#333; 
   transition:all 0.9s, color 0.3;
   margin-left:30px
}


.btngo:hover{
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
               <div class=agree style="text-align: center;"><h1>개인정보동의서</h1></div>
                <form action='join' method='get' id=frm>
                <table class=agreeTable align=center style='margin:0 auto'>
                    <tr>
                       <td><hr><h3><br>(주)승미와은수 이용약관, 개인정보 수집 및 이용,<br> 
                       쇼핑정보 이용동의(선택)에 모두 동의합니다.&nbsp;<input type=checkbox value=all id=all name=all></h3><br>
                    
                    
                    <tr>
                        <td><hr><h3>[필수]이용약관</h3>
                            <textarea>
제1조(목적)
■ 이 약관은 (전자상거래 사업자)가  사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련
서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로 합니다.
                            </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>이용약관에 동의하십니까? <input type="checkbox" id=a1 class=ab>동의함<br><hr></td>
                    </tr>
                    <tr>
                        <td><h3>[필수] 개인정보 수집 및 이용 동의</h3>
                            <textarea>
제2조
■ 수집하는 개인정보 항목
회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
                            </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>개인정보 수집 및 이용에 동의하십니까? <input type="checkbox" id=a2 class=ab>동의함<hr></td>
                    </tr>
                    <tr>
                        <td><h3>[선택] 쇼핑정보 수신 동의</h3>
                            <textarea>
제3조
■ 할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS와 이메일로 받아보실 수 있습니다.
단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.
                            </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>SMS 수신을 동의하십니까? <input type="checkbox" id=a3 class=ab>동의함</td>
                    </tr>
                    <tr>
                        <td>이메일 수신을 동의하십니까? <input type="checkbox" id=a4 class=ab>동의함<hr></td>
                    </tr>
                    <tr>
                        <td align="right"><br><input type=button id=btnGo1 value="이전" class=btngo>  <input type=button id=btnGo2 value="다음" class=btngo></td>
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
</body>
<script>
$(document)

.on('click','#all',function(){
    chk=$('#all').is(":checked")
   if(chk){
      $('.ab').prop('checked', true);
   } else{
      $('.ab').prop('checked', false);
   }
})

.on('click','#btnGo1',function(){
   $(location).attr('href','login');
})


.on('click','#btnGo2',function(){
   console.log($('#btnGo2').val())
   var a=$('#a1').prop("checked");
   var b=$('#a2').prop("checked");

   
   if(a==false || b==false ){
      alert("필수약관에 동의해주세요.");
       } else {
      $('#frm').submit();
         }
})

.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>