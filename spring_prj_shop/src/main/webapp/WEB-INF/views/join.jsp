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
    padding: 7px 7px;
}

/* sign up 문구 */  
h1{
   font-style:italic;   
   font-weight:bold;
   font-size:xx-large;
}

/* 아이디 등 긴 텍스트칸 */
.lo{
   margin:0 auto;
   width:380px;
   height:30px;
   font-size:large;}

/* 모바일 우편번호 텍스트칸 */
.mo{
   padding:0 auto;
   width:120px;
   height:30px;
   font-size:large;
   
   }
/* 버튼 */
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
    <nav style='margin-top:100px;margin-bottom:300px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
                      <form action='join_welcome' method='post' id=frm>
                <table align="center" class=join style='margin:0 auto;'>
                    <tr><th colspan="2"><h1>sign up</h1></th></tr>
                    <tr><th colspan="2"><input type=hidden id=joinNum_id name=joinNum></th></tr>
                    <tr><th colspan="2"><input type=hidden id=joinOk_id name=joinOk></th></tr>
                    <tr><th colspan="2"><input type=hidden id=joinFlag_id name=joinFlag></th></tr>
            
                    <tr><th colspan="2"><hr></th></tr>
                    <tr><th colspan="2">필수항목</th></tr>
                    <tr><th colspan="2"><hr><br></th></tr>
                    
                    <tr><td>이름</td><td><input type=text id=joinName_id name=joinName class=lo placeholder="이름"></td></tr>
            
                    <tr><td align=right>성별</td><td><input type=radio id=Man name=gene checked>남<input type=radio id=Woman name=gene>여</td> </tr>
            
                    <tr><td align=right>생년월일</td><td><input type=date class=lo id=joinDate_id name=joinDate></td></tr>
                           
                    <tr><td align=right>아이디</td><td><input type=text id=joinId_id name=joinId class=lo placeholder="아이디"></td></tr>
                    <tr><td colspan="2" align=right><input type=button id=btnGo1 class=btngo value="중복확인" >
                                            </td></tr>
                                          
                    <tr><td align=right>비밀번호</td><td><input type=password  id=joinPw_id name=joinPw class=lo placeholder="비밀번호(6자 이상 영문/숫자 조합하여 입력"></td></tr>
                    <tr><td align=right>비밀번호확인</td><td><input type=password id=joinPw2_id name=joinPw2  class=lo placeholder="비밀번호확인"></td></tr>
            
                    <tr><td align=right>이메일</td><td><input type=text id=joinMail_id name=joinMail class=lo placeholder="이메일(example@gmail.com)"></td></tr>
                    <tr><td colspan="2" align=right><input type=button id=btnGo2  class=btngo value="인증번호보내기"></td></tr>
                    
                    <tr><td align=right>인증번호</td><td><input type=text class=lo id=joinNum2_id name=joinNum2 placeholder="인증번호"></td></tr>
                    <tr><td colspan="2" align=right><input type=button  id=btnGo3 class=btngo value="인증요청"></td></tr>
            
                    <tr><td align=right>모바일</td><td><input type="phone" class=mo size=2 id=mobile1>-<input type="phone" class=mo id="mobile2" size="3;">-<input type="phone" id="mobile3" class=mo size="3";placeholder="휴대폰(-제외)"></td></tr>
                  
                  <tr valign='middle'><td align=right>우편번호</td><td><input type="text" class=mo id="addrCode"><input type="button" class=btngo id="postCode" value="우편번호"></td></tr>
                    <tr><td align=right>주소</td><td><input type="text" id="addr1" class=lo></td></tr>
                    <tr><td align=right>상세주소</td><td><input type="text" id="addr2" class=lo></td></tr>
                   
                    <tr><th colspan="2"><br><hr></th></tr>
                    <tr><td colspan="2" align=right><input type=reset name=joinCancel  id=btnGo5 value="취소"  class=btngo><input type=button name=joinSign class=btngo id=btnGo4 value="가입"> </td></tr>
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
<script type="text/javascript">
var flag;

$(document).ready(function(){
   flag=1
})
//아이디중복체크하기
.on('click','#btnGo1',function(){
    //$('#joinId_id').val();
      $.ajax({
         method:'post',
         url:'join_idchk',//mapping때 쓰는 좌표
         datatype:'json',
         data:{id:$('#joinId_id').val()}//data가없으면 get
      })   
      .done(function(str){
          var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
           if( !idReg.test( $("input[name=joinId]").val() ) ) {
               alert("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
               return;
           }

         if(str=="0"){
            alert("사용 가능한 아이디입니다.");
         }else {
            alert('이미 존재하는 아이디입니다.');
         }
      })
})

.on('click','#btnGo5',function(){
   var z= confirm("로그인페이지로 돌아가시겠어요?")
       if(z){
          $('#frm').attr('action','login').submit();      
       }else{
          return false;
       }
})


//인증번호 보내기
.on('click','#btnGo2',function(){
   $('#joinOk_id').val(Math.floor(Math.random()* 999999-100000)+100000)
       //이메일 중복 체크
        $.ajax({
        method:'post',
        url:'join_emailchk',
        datatype:'json',
        data:{email:$('#joinMail_id').val()}
     })
     .done(function(str){//이메일이 중복되지 않을때
       if(str=='0'){
           $.ajax({
               method:'post',
               url:'mailSender',
               datatype:'json',
               data:{email:$('#joinMail_id').val(),pass:$('#joinOk_id').val()}
               })   
              .done(function(str){
                 alert('인증번호가 발송되었습니다.')
              }) 
       } else{//이메일이 중복되었을때
          alert("이미 존재하는 이메일입니다.")
       }
      })
})
//인증번호 확인하기
.on('click','#btnGo3',function(){
   if($('#joinOk_id').val()==$('#joinNum2_id').val()){
      flag=0;
      alert('인증되었습니다.');
      $('#joinMail_id').attr("readonly",true);
      $('#joinMail_id').css('background-color','rgb(104, 104, 104, 0.7)')
      $('#joinMail_id').css('color','gray')
   }else{
      alert('잘못된 인증번호입니다.')
   }
      
})
//회원가입(insert)
.on('click','#btnGo4',function(){
   adress=$('#addrCode').val()+'?'+$('#addr1').val()+'?'+$('#addr2').val();
   mobile=$('#mobile1').val()+'-'+$('#mobile2').val()+'-'+$('#mobile3').val();
   if($('#joinPw_id').val()!=$('#joinPw2_id').val()){
      alert('비밀번호 입력을 다시 확인해주십시오.')
      return false;
   }
   if($('#joinNum2_id').val()!=$('#joinOk_id').val()){
      alert('인증을해주십시오.')
      return false;
   }
   
   var a=$('#Man').prop("checked");
   var b=$('#Woman').prop("checked");
   
   if($('#joinName_id').val()==""){
      alert('이름은 필수항목입니다.')
      return false;
   }else if($('#joinDate_id').val()==""){
      alert('생년월일은 필수항목입니다.')
      return false;
   } else if($('#joinId_id').val()==""){
      alert('아이디는 필수항목입니다.')
      return false;
   } else if($('#joinPw_id').val()==""){
      alert('비밀번호는 필수항목입니다.')
      return false;
   } else if($('#joinMail_id').val()==""){
      alert('이메일은 필수항목입니다.')
      return false;
   } else if($('#joinNum2_id').val()==""){
      alert("인증번호를 입력해주세요")
      return false;
   } else if($('#joinMobile_id').val()==""){
      alert("휴대폰번호를 입력해주세요")
      return false;
   } else if($('#addrCode').val()=="" || $('#addr2').val()==""){
      alert("우편번호와 주소를 입력해주세요");
      return false;
   }
      $.ajax({
        method:'post',
        url:'member_insert',
        datatype:'json',
        data:{name:$('#joinName_id').val(),gene:$('input[name=gene]:checked').attr('id'),birth:$('#joinDate_id').val(),
              id:$('#joinId_id').val(),pw:$('#joinPw_id').val(),mail:$('#joinMail_id').val(),
              mobile:mobile,adress:adress},
         beforeSend:function(){console.log(this.data)}    
     })
     .done(function(str){
        alert('가입되었습니다.');
        $('#frm').submit()
      })
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
               document.getElementById('addrCode').value = data.zonecode; 
               document.getElementById('addr1').value = fullAddr;
               document.getElementById('addr2').focus();
           }
       }).open();
   })
})

//우편번호
.on('click','#postCode2',function(){
    new daum.Postcode({
        oncomplete: function(data) {    
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수
            console.log(fullAddr);
            console.log(extraAddr);
            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }
            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('addrCode1').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr3').value = fullAddr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('addr4').focus();
        }
    }).open();
})
.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>