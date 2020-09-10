<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
#tbl tr td{
   padding:5px 10px;
   word-break:break-all;
   table-layout: fixed;
}

.btngo{
   width:100px; 
   height:40px; 
   line-height:40px; 
   border:1px gray solid;;
   align-items: center; /*센터맞추기 */
   margin:0 auto;
   background-color:white; 
   text-align:center;
   cursor: pointer; 
   color:#333; 
   transition:all 0.9s, color 0.3;
   margin-left:30px;
   border-radius: 5px;
   font-weight:bold;
}

.btngo:hover{
   color:black;
   box-shadow: 0 80px 0 0 rgba(0,0,0,0.25) inset, 0 -80px 0 0 rgba(0,0,0,0.25) inset;
}

.post:hover{
   color:black;
   box-shadow: 0 80px 0 0 rgba(0,0,0,0.25) inset, 0 -80px 0 0 rgba(0,0,0,0.25) inset;
}

.btngo5{
   width:250px; 
   height:40px; 
   line-height:40px; 
   border:1px gray solid;;
   align-items: center; /*센터맞추기 */
   margin:0 auto;
   background-color:white; 
   text-align:center;
   cursor: pointer; 
   color:#333; 
   transition:all 0.9s, color 0.3;
   margin-left:30px;
   border-radius: 5px;
   font-weight:bold;
}

.textbox{
   margin:0 auto;
   width:350px;
   height:30px;
   font-weight:bold;
   background-color:transparent;border:0 solid white;
   color:#212F3C ;
}

.textbox1{
   margin:0 auto;
   width:65px;
   text-align:center;
   height:30px;
   font-weight:bold;
   background-color:transparent;border:0 solid white;
   color:#212F3C ;
}

.textbox0{
   width:65px;
   text-align:center;
   height:30px;
   font-weight:bold;
   background-color:transparent;border:0 solid white;
   color:#212F3C ;
}
.post{
   width:100px; 
   height:40px;  
   border:1px gray solid;;
   align-items: center; /*센터맞추기 */
   background-color:white; 
   text-align:center;
   cursor: pointer; 
   color:#333; 
   transition:all 0.9s, color 0.3;
   border-radius: 5px;
   font-weight:bold;
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
    <nav style='margin-bottom:200px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
               <table style='width:1500px;margin:0 auto; height:385px;'>
             <tr align=center style='width:100px'>     
                  <td valign=top>
                  <h1 style='font-size:2em ;font-style:italic;'>내 프로필</h1><br>
                  <div>
                     <ul>
                       <li><h1><a href="mypage" style="color:black;font-style:italic;">구매내역</a></h1></li>
                        <li><h1><a href="mypage_heart" style="color:black;font-style:italic;">찜하기<i class="fas fa-hand-holding-heart"></i></a></h1></li>
                        <li><h1><a href="mypage_mileage" style="color:black;font-style:italic;">마일리지</a></h1></li>
                        <li><h1><a href="mypage_myInfo" style="color:black;font-style:italic;">내 프로필</a></h1><hr></li>
                     </ul>
                  </div>
                  </td>
                  <td>
                  <div>
                  <table width=1300px id=tbl>
                  <c:forEach items="${member}" var="member">
                     <tr><br><br><br>
                        <td align=right width=500px>아이디</td>
                        <td width=800px><b>${member.m_id}</b></td>
                     </tr>
                     <tr>
                        <td align=right>이전 비밀번호</td>
                        <td><input type=password  class=textbox id=before_pw placeholder="비밀번호(password)"></td>
                     </tr>
                     <tr>
                        <td align=right>새 비밀번호</td>
                        <td><input type=password class=textbox id=member_pw placeholder="새 비밀번호(password(6자 이상 영문/숫자 조합하여 입력)"></td>
                     </tr>
                     <tr>
                        <td align=right>새 비밀번호확인</td>
                        <td><input type=password class=textbox id=after_pw placeholder="새 비밀번호(password) 확인">&nbsp;<font id="chkNotice" size="2"></font></td>
                     </tr>
                     <tr>
                        <td align=right>이름</td>
                        <td><b>${member.member_name}</b></td>
                     </tr>
                     <tr>
                        <td align=right>이메일</td>
                        <td>${member.member_mail}</td>
                     </tr>
                     <tr>
                        <td align=right>성별</td>
                        <td>${member.member_gene}</td>       
                     </tr>
                     <tr>
                        <td align=right>연락처</td>
                        <td><input type="phone" size=2; class=textbox1 value="${member.member_mobile}" id=mobile1>-<input type="phone" id="mobile2" class=textbox1 size="3;">-<input type="phone" class=textbox1 id="mobile3" size="3";placeholder="휴대폰(-제외)"></td>
                     </tr>
                     <tr>
                        <td align=right>주소</td>
                        <td><input type=text  id=a1 class=textbox0 value='${member.member_adress}' size=5><input type="button" class=post id="postCode" value="우편번호"> <br><input type=text class=textbox id=a2 size=40><br><input type=text id=a3 class=textbox size=40></td>
                     <tr>
                        <td align=right>메일 수신 확인</td>
                        <td><input type=checkbox checked>&nbsp;악보스코어의 업데이트 소식을 받습니다</td>
                     </tr>
                     <tr>
                        <td colspan=2 align=center><input type=button class=btngo5 value="개인정보를 수정합니다" id=update><input type=button class=btngo value="취소" id=cencle></td>
                     </tr>
                     </c:forEach>
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
   var mobile=$('#mobile1').val().split("-");
   $('#mobile1').val(mobile[0]);
   $('#mobile2').val(mobile[1]);
   $('#mobile3').val(mobile[2]);
  
   var adress=$('#a1').val().split("?");
   $('#a1').val(adress[0]);
   $('#a2').val(adress[1]);
   $('#a3').val(adress[2]);
   
})
.on('keyup','#after_pw',function(){
   if($('#member_pw').val() != $('#after_pw').val()){
        $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
        $('#chkNotice').attr('color', '#f82a2aa3');
      } else{
        $('#chkNotice').html('비밀번호 일치함<br><br>');
        $('#chkNotice').attr('color', '#199894b3');
      }
})


.on('click','#update',function(){
   var mobile=$('#mobile1').val()+'-'+$('#mobile2').val()+'-'+$('#mobile3').val();
   var mpw=$('#member_pw').val();
   var apw=$('#after_pw').val();
   var bpw=$('#before_pw').val();
   
   var adress=$('#a1').val()+'?'+$('#a2').val()+'?'+$('#a3').val();
   
   if(bpw =='' || mpw ==''|| apw=='' ){
      alert("비밀번호를 입력해주세요.")
      return false;
   }
   $.ajax({
      method:'post',
      url:'mypage_pwconfirm',
      datatype:'json',
      data:{member_pw:$('#before_pw').val(),member_id:$('#tbl tr:eq(0) td:eq(1)').text()}
   }).done(function(str){
      if(str==0){
         alert("이전 비밀번호가 같지않습니다.")
      }else if(apw.length<6){
         console.log(apw);
         alert("비밀번호는 6자리 이상 문자,숫자 조합으로 적어주세요.")
      }else if(mpw!=apw){
         alert("새로운 비밀번호가 같지않습니다.")
      } else if(str==1){
         if(mpw==apw){
            $.ajax({
                method:'post',
                url:'mypage_update',
                datatype:'json',
                data:{m_id:$('#tbl tr:eq(0) td:eq(1)').text(),member_pw:$('#after_pw').val(),mobile:mobile,adress:adress}
             }).done(function(str){
                alert('내정보가 수정되었습니다.')
                $(location).attr('href','mypage');
               })
         } 
        }
   })
})
.on('click','#cencle',function(){
   var a= confirm('이전페이지로 돌아가시겠어요?');
   if(a==true){
      $(location).attr('href','mypage');
   } else if(a==false){
      return false;
   }
   })
.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})


//우편번호
.ready(function(){
   $("#postCode").click(function(){
       new daum.Postcode({
           oncomplete: function(data) {    
               var fullAddr = ''; 
               var extraAddr = ''; 
               if (data.userSelectedType === 'R') { 
                   fullAddr = data.roadAddress;
               } else { 
                   fullAddr = data.jibunAddress;
               }
               if(data.userSelectedType === 'R'){
                   if(data.bname !== ''){
                       extraAddr += data.bname;
                   }
                   if(data.buildingName !== ''){
                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
               }
               document.getElementById('a1').value = data.zonecode; 
               document.getElementById('a2').value = fullAddr;
               document.getElementById('a3').focus();
           }
       }).open();
   })
})


</script>
</html>