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
.soo{
   width:60px;
   height:60px;
}
.fire tr td{
   padding:20px;
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
   margin-left:30px;
   border-radius: 5px;
   font-weight:bold;
}


.btngo:hover{
   color:black;
   box-shadow: 0 80px 0 0 rgba(0,0,0,0.25) inset, 0 -80px 0 0 rgba(0,0,0,0.25) inset;
}

h1{
   font-style:italic;   
   font-weight:bold;
   font-size:xx-large;
}

.total{
   font-style:italic;
   margin:0 auto;
   width:380px;
   height:30px;
   font-weight:bold;
   font-size:xx-large;
   background-color:transparent;border:0 solid black;
   color:#212F3C ;
}

.new{
   font-style:italic;   
   font-weight:bold;
   font-size:large;
   color:#212F3C ;

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
    <nav style='margin-top:100px;margin-bottom:300px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto'; 넣어주면 가운데정렬됨 -->
                     <table class=fire width="1000px;" height="600px;" align="center" style='margin:0 auto'>
                    <tr>
                        <td colspan=6 align=center height=50px><h1>yourCart</h1><br><hr></td>
                    </tr>
                    <tr height=30px align=center>
                        <th><p><input type="checkbox" name="all" class="check-all"> <label class=new>All</label></p></th>
                        <th class=new>Image</th>
                        <th class=new>Products</th>
                        <th class=new>Price</th>
                        <th class=new>Count</th>
                        <th class=new>Total</th>
                    </tr>
                     <c:forEach items="${cart2}" var="ca">
                    <tr id="trt" align=center>
                        <td><input type=checkbox id='sel' class=ab value="${ca.cart_id}"></td>
                        <td><img class=soo src="resources/image/${ca.s_id}.gif"></td>
                        <td>${ca.cart_name}</td>
                        <td>${ca.cart_price}</td>
                        <td>${ca.cart_count}</td>
                        <td>${ca.cart_total}<input type=hidden name='hih' id='hi' value='${ca.cart_total}'></td>
                    </tr>
                    </c:forEach>
                    <tr height=70px>
                        <td colspan=6>
                         <div class=a id=totalAll><hr><h1 style='color:#212F3C;'>합계:&nbsp;<input type=number id="total" class=total readonly></h1><br>
                                <p class=b>고객님의 총 주문 합계 금액 입니다.</p></div><br>
                           <input type=button id=chkDelete value=선택상품삭제 class=btngo>
                            <input type=button id=chkEmpty value=장바구니비우기 class=btngo>
                           <button onclick="history.back()" id=shoppingContinue class=btngo>쇼핑계속하기</button> 
                            <input type=button id=orderAll value=주문하러가기 class=btngo>
                        </td>
                    </tr>
                    <tr height=67px>
                        <td colspan=6>
                            <div><hr><br>장바구니 이용안내<br>
                            <p class=b>무이자할부 상품 주문의 경우, 무이자할부 혜택을 받으시려면 장바구니, 무이자할부 상품-아래의 [주문하기]버튼을 눌러
                                주문/결제 하시면 됩니다.<br>
                                [전체 상품 주문]버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대해 주문/결제가 이루어 집니다.
                            </p>
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
</body>
<script>
var s=0;
var ar=[];
$(document)
//장바구니에 담은것 총 합계
.ready(function(){   
   $('input[name=hih]').each(function(i){
      v=parseInt($(this).val())
      s=s+v
   })
   $('#total').val(s);

})

//체크박스 모두 선택/해제
.on('click','.check-all',function(){
    chk=$('.check-all').is(":checked")
   $('input[id="sel"]').each(function(i){
      if(chk){
            $(this).prop('checked', true);
        } else{
          $(this).prop('checked', false);
        } 
   })
})

//이전 상품페이지로 돌아가기
.on('click','#shoppingContinue',function(){
    alert("이전페이지로 돌아갑니다.");
    $(location).attr("href","");
})

//주문계속하기 버튼을 눌렀을때
.on('click','#orderAll',function(){
    var a=confirm("주문하시겠습니까?");
    if(a==false){
        return false;
    } else{
       var ar=[];
       $('input[id="sel"]:checked').each(function(i){
          ar.push($(this).val());
       })
       
       
       
       if(ar == ""){
          alert("한개 이상의 상품을 선택해주세요");
       } else if($('.fire tr td').text()==''){
          alert('장바구니가 비어있습니다');
       }else {     
       alert("주문페이지로 이동합니다.")
       str=ar.join(',');
       $(location).attr("href","pay?cart_id="+str);
       }
    }
})

//선택삭제를눌렀을때
.on('click','#chkDelete',function(){
      $('input[id="sel"]:checked').each(function(i){   
            ar.push($(this).val());
      });
      str=ar.join(',');
      $(location).attr("href","cart_delete?delete="+str)
      if(ar==""){
         alert("상품을 선택해주세요")
      } else{
      alert("선택상품이 삭제되었습니다")
      }
})

//장바구니비우기를 눌렀을때
.on('click','#chkEmpty',function(){
   var a=confirm("장바구니를 모두 비우시겠습니까?");
   if(a==false){
      return false;
   } else{  
      alert("삭제되었습니다");
   }
   $(location).attr("href","cart_empty2");
})
.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>