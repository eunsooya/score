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
    .a{  
       font-weight:bold;
       font-size:large;
       background-color:transparent;border:0 solid black;
       color:#212F3C ;
       align:right;
    }
    /* 사용하실마일리지 */
    .b{
       align:right;
       font-weight:bold;
       font-size:large;
       color:#212F3C ;
       background-color:transparent;
       border-radius: 5px;
    }
    /* 지불금액 */
    .z{
       align:right;
       font-weight:bold;
       font-size:x-large;
    }
    /* 지불금액text */
    .c{
       font-weight:bold;
        font-size:x-large;
        background-color:transparent;border:0 solid black;
        color:#212F3C ;
        align:right;
        width:100px
    
    
    }
    h1{
       font-style:italic;   
       font-weight:bold;
       font-size:xx-large;
    }
    .ab{
      font-style:italic;   
       font-weight:bold;
       font-size:large;
       color:#212F3C ;
    }
    .coverImg{
       
       width:70px;
        height:70px;
       border-radius:5px;
    }
    
    .btngo{
       width:100px; 
       height:40px;
       border:1px gray solid;
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
    
    .textbox{
       background-color:#F2F2F2;
       border-radius: 5px;
       font-size:large;
       font-weight:bold;
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
    <nav style='margin-top:100px;margin-bottom:250px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
         <table width="1000px;" height=200px; align=center style="background:#E6E6E6; border-radius:10px 30px 50px 80px;margin:0 auto;">
            <div align=center><h1>주문서작성</h1></div><br>
            <tr heigth=40px class=ab align=center>
                  <td>Image</td>
                     <td>products</td>
                     <td>Price</td>
                     <td>Count</td>
                     <td>Total</td>
            </tr>
            <c:forEach items="${cart3}" var="car">
            <tr height=100px align=center >
               <td><img class="coverImg" src="resources/image/${car.s_id}.gif"></td>
               <input type=hidden value='${car.cart_id}' id=cart_id>
               <td>${car.cart_name}</td>
               <td>${car.cart_price}</td>
               <td>${car.cart_count}</td>
               <td>${car.cart_total}<input type=hidden name='hih' id='hi' value='${car.cart_total}'></td>
            </tr>
            </c:forEach>
            <tr height=60px align=right>
               <td align=right colspan=5 class=z>지불 금액:<input type=number id="tot" class=c readonly></td>
            </tr>
            </table>
            <br><br>
                <table width="1000px;" height="600px;" align="center" style="background:#E6E6E6; border-radius:10px 30px 50px 80px;margin:0 auto;"> 
                    <tr> 
                        <!-- <td width="120;" align="center">
                            MEN<br><br>
                            WOMEN<br><br>
                            COLLECTION<br><br>
                        </td> -->
                        <td width=100px></td>
                        <td width="500px" id="orderInfo">
                            주문정보<br><br>
                            <input type='hidden' id=addrs>
                            <input type='hidden' id=mobile>
                            <input type='hidden' id=email>
                            &nbsp;<input type="text" class=textbox id="memberName"><br><br>
                            &nbsp;<input type="text" class=textbox id="addrCode" size="5;">&nbsp;<input type="button" onclick="click()" class=btngo id="postCode" value="우편번호"><br><br>
                            &nbsp;<input type="text" class=textbox id="addr1"><br><br>
                            &nbsp;<input type="text" class=textbox id="addr2"><br><br>
                            &nbsp;<input type="phone" class=textbox size=3; id=mobile1>-<input type="phone" class=textbox id="mobile2" size="5;">-<input type="phone" class=textbox id="mobile3" size="5;"><br><br>
                            &nbsp;<input type="text" class=textbox id="email1" size="8">&nbsp;@&nbsp;<input type="text" class=textbox id="email2" size="8">
                            &nbsp;<select id="emailSelect" class=textbox>
                                <option>선택하세요</option>
                                <option>naver.com</option>
                                <option>gmail.com</option>
                                <option>hanmail.net</option>
                                <option>kakao.com</option>
                                <option>hotmail.com</option>
                                <option>직접입력</option>
                                </select>
                                <br><br>
                                <div id="emailEx">이메일을 통해 주문처리과정을 보내드립니다.<br>
                                이메일 주소란에는 반드시 수신가능한 이메일주소를 <br>입력해 주세요.
                        </div></td>
                        <td width="500px" id="postInfo">
                            배송정보<br><br>
                            &nbsp;<input type="radio" id="deliverySame" name="delivery">&nbsp;주문자 정보와 동일 <input type="radio" id="deliveryNew" name="delivery">&nbsp;새로운배송지<br><br>
                            &nbsp;<input type="text" class=textbox id="memberPostName"><br><br>
                            &nbsp;<input type="text" class=textbox id="addrCode1" size="5;">&nbsp;<input type="button" id="postCode2" class=btngo value="우편번호"><br><br>
                            &nbsp;<input type="text" class=textbox id="addr3"><br><br>
                            &nbsp;<input type="text" class=textbox id="addr4"><br><br>
                            &nbsp;<input type="phone" class=textbox size="3;" id="mobile4">-<input type="phone" class=textbox id="mobile5" size="5">-<input type="phone" class=textbox id="mobile6" size="5"><br><br>
                            &nbsp;<textarea rows="3" cols="40" class="a" id="postMessage" placeholder="배송메세지를 입력해주세요"></textarea><br><br>
                            
                            <p align="right">
                                <input type="button" class=btngo value="pay" id=pay align="right">&nbsp;
                                <input type="button" class=btngo value="취소" id=cencle align="right">
                            </p>
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
       var s=0;
       $('input[name=hih]').each(function(i){
          v=parseInt($(this).val())
          s=s+v
       })
       $('#tot').val(s);
       
       var addrs=$('#addrs').val().split("?");
       $('#addrCode').val(addrs[0]);
       $('#addr1').val(addrs[1]);
       $('#addr2').val(addrs[2]);
       
    
       var mobile=$('#mobile').val().split("-");
       $('#mobile1').val(mobile[0]);
       $('#mobile2').val(mobile[1]);
       $('#mobile3').val(mobile[2]);
       
       var email=$('#email').val().split("@");
       $('#email1').val(email[0]);
       $('#email2').val(email[1]);
       
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
    $(document)
    .on('click','#deliverySame',function(){
        var memberName=$('#memberName').val();
        var addrCode=$('#addrCode').val();
        var addr1=$('#addr1').val();
        var addr2=$('#addr2').val();
        var mobile1=$('#mobile1').val();
        var mobile2=$('#mobile2').val();
        var mobile3=$('#mobile3').val();
    
        $('#memberPostName').val(memberName);
        $('#addrCode1').val(addrCode);
        $('#addr3').val(addr1);
        $('#addr4').val(addr2);
        console.log(mobile1);
        $('#mobile4').val(mobile1);
        $('#mobile5').val(mobile2);
        $('#mobile6').val(mobile3);
        });
    })
    
    .on('click','#deliveryNew',function(){
    
        $('#memberPostName').val("");
        $('#addrCode1').val("");
        $('#addr3').val("");
        $('#addr4').val("");
        $('#mobile4').val("");
        $('#mobile5').val("");
        $('#mobile6').val("");
    })
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
    .on('change','#emailSelect',function(){
        $('#emailSelect').each(function(){
            var eachAddr=$(this).val();
            var s=$('#email2').val(eachAddr);
            console.log(s);
            if(eachAddr=="직접입력"){
                $('#email2').val("");
                document.getElementById('email2').focus();
            } else if(eachAddr=="선택하세요" ){
                $('#email2').val("");
            }
        })
    })
    
    .on('click','#cencle',function(){
        var a=confirm("취소하시겠습니까?")
        if(a==false){
            return false;
        } else{
            alert("이전페이지로 이동합니다.")
        }
    })
    
    .on('click','#pay',function(){
       
       if($('#memberName').val()==""){
          alert("이름은 필수항목입니다");
       }else if($('#addrCode').val()==""){
          alert("우편주소는 필수항목입니다");
       }else if($('#addr1').val()==""){
          alert("기본주소는 필수항목입니다");
       }else if($('#addr2').val()==""){
          alert("상세주소는 필수항목입니다");
       }else if($('#mobile1').val()==""){
          alert("모바일은 필수항목입니다");
       }else if($('mobile2').val()==""){
          alert("모바일번호를 모두 입력해주세요");
       }else if($('#mobile3').val()==""){
          alert("모바일번호를 모두 입력해주세요");
       }else if($('#email1').val()==""){
          alert("이메일은 필수항목입니다")
       }else if($('#email2').val()==""){
          alert("이메일은 필수항목입니다")
       }else if($('#memberPostName').val()==""){
          alert("배송정보 이름은 필수항목입니다")
       }else if($('#addrCode1').val()==""){
          alert("배송정보 우편번호는 필수항목입니다")
       }else if($('#addr4').val()==""){
          alert("배송정보 상세주소는 필수항목입니다")
       }else if($('#mobile4').val()==""){
          alert("배송정보 모바일번호는 필수항목입니다")
       }else if($('#mobile5').val()==""){
          alert("배송정보 모바일번호는 필수항목입니다")
       }else if($('#mobile6').val()==""){
          alert("배송정보 모바일번호는 필수항목입니다")
       } else{
          var a=confirm("주문하시겠습니까?")
          if(a==false){
             alert("주문이 취소되었습니다");
             return false;
          } else{
             alert("주문이 완료되었습니다");
             var addr=$('#addrCode1').val()+$('#addr3').val()+$('#addr4').val();
             console.log(addr);
             $(location).attr("href","pay_complete3?cart_id="+$('#cart_id').val()+"&addr="+addr);
          }
       }
    })
    .on('click','#ok',function(){
       $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
    })
    </script>
</html>