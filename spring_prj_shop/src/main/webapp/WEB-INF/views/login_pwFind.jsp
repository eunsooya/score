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

.login_box{
   margin:0 auto;
   width:300px;
   height:40px;
   font-size:large;
}
.login_box2{
   width:140px;
   height:40px;
   font-size:large;
}

.lo:hover{ 
    text-decoration:underline; 
} 
/* find your PW  */
h1{
   font-style:italic;   
   font-weight:bold;
   font-size:xx-large;
}
/* 버튼  */
.login_button{
   display:block; 
   width:100px; 
   height:40px; 
   line-height:40px; 
   border:1px gray solid;;
   float:left;
   align-items: center; /*센터맞추기 */
   margin:20px 10px 20px;
   background-color:white; 
   text-align:center;
   cursor: pointer; 
   color:#333; 
   transition:all 0.9s, color 0.3;
}

.login_button:hover{
   color:black;
   box-shadow: 0 80px 0 0 rgba(0,0,0,0.25) inset, 0 -80px 0 0 rgba(0,0,0,0.25) inset;
}
.lo:hover{ 
    text-decoration:underline; 
} 
#btnGo1{
margin-right:20px;
margin-left:100px
}
</style>

<body>
<div style='position:relative;float:left'>
  <nav class=title_nav>
        <div class=title_logo > <a href="home"><img class='logos' src='resources/logoimg/logo.gif'></a></div>
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
    <nav style='margin-top:100px;margin-bottom:350px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
                <form action="pwFind" method='post' id=frm>
                <table class=login_table align='center' valign='middle' style='margin:0 auto;'>
                    <tr><th colspan=2 class=log><h1>find your PW</h1></th></tr>
                    <tr><td colspan=2><hr></td></tr>
                    <tr><td colspan=2 align=center><br><input type=text id=loginId_id name=loginId class=login_box placeholder="ID"></td></tr>
                    <tr><td colspan=2 align=center><input type=text class=login_box id=loginName_id name=loginName placeholder="Name"></td></tr>  
                    
                    <tr><td align=left class=mailText><input type=text id=loginMail_id name=loginMail class=login_box2 placeholder="Email">@
                    <input type=text id=loginMail2_id name=loginMail2 class=login_box2 ></td>
                        <td><select id=adress_id class=login_box2>
                            <option>선택하세요</option>
                                <option>naver.com</option>
                                <option>gmail.com</option>
                                <option>hanmail.net</option>
                                <option>kakao.com</option>
                                <option>hotmail.com</option>
                                <option>직접입력</option>
                                </select></td></tr>
                    <tr><td colspan=3 align=center valign=bottom style='padding-top:20px'><b class=lo><a href='login_idFind' style="color:black;font-style:italic; ">아이디찾기</a></b>  
                    <b class=lo><a href='login_pwFind' style="color:black;font-style:italic; ">비밀번호찾기</a></b></td></tr> 
                    <tr><td colspan=2 align=center><input type=button id=btnGo1 class=login_button value="확인">  <input type=button id=btnGo2 class=login_button value="취소"></td></tr>
                    
                    <tr><td colspan=2><hr></td></tr>
                </table>
                </form>
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
//이메일 옮기기
.on('change','#adress_id',function(){
     $('#adress_id').each(function(){
         var eachAddr=$(this).val();
         var s=$('#loginMail2_id').val(eachAddr);
          if(eachAddr=="직접입력"){
              $('#loginMail2_id').val("");
              document.getElementById('loginMail2_id').focus();
          } else if(eachAddr=="선택하세요" ){
              $('#loginMail2_id').val("");
          }
      }) 
})



//인증번호보내기
.on('click','#btnGo1',function(){
   if($('#loginId_id').val()!='' && $('#loginName_id').val()!='' && $('#loginBirth_id').val()!=''&& $('#loginMail_id').val()!=''&& $('#loginMail2_id').val()!=''){
      $.ajax({
         method:'post',
         url:'pwFind',
         data:{loginId:$('#loginId_id').val(),loginName:$('#loginName_id').val(),loginMail:$('#loginMail_id').val(),loginMail2:$('#loginMail2_id').val()},
         datatype:'json',
         beforeSend:function(){console.log(this.data)} 
      }).done(function(str){
         if(str=="0"){
            alert("아이디 또는 이름 또는 이메일을 확인해주세요.")
         }else{
            $("#frm").attr('action','pwInfo').submit();
         }
      })
   } else{
      alert("빈칸을 입력해주세요.")
   }
})
//인증확인
.on('click','#btnGo2',function(){
      $('#frm').attr('action','login').submit();
   
})
.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>