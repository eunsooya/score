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
/* 텍스트box */
.txt{
   width:100%;
   height:40px;
   font-size:18px;
}
/* 텍스트area */
.txt2{
   width:100%;
   height:200px;
   font-size:18px;
}

.fqa_write_tbl{
   margin:0 auto;
   border-collapse: collapse;
   border-left:0px;
   border-right:0px;

}
.fqa_write_tbl tr td{
   font-size:18px;
   padding:20px 20px;
}
#fqa_sel{
   font-size:18px;
   width:220px;
   height:40px;
}
.td1{
   background-color:#E3DBDB;
   text-align:center;
   border-left:1px;
   border-right:1px double gray;
}
.v:link{
    color:black;
}
.v:visited{
   color:black;   
}
.btn{
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
    <nav style='margin-top:50px;margin-bottom:300px;width:1920px'>
        <!-- 테이블 넣는곳 시작부분 ^^-------------------------------------------------------------------------------------------------------- -->
         <!-- 여기에 넣어주고 TABLE인 경우 style='margin:0 auto;' 넣어주면 가운데정렬됨 -->
         
         <div align=center style='margin:30px 30px;font-size:28px;'>문의하기</div>   
           <table class=fqa_write_tbl  border="1" cellspacing="0" cellpadding="1">
             <form action='fqa_write' method='post'> 
             <tr>
                 <td class='td1' width="80px">제목</td><td width=800px><input type=text name=fqa_title class='txt' id=fqa_title></td>
             </tr>
             <tr>
                 <td class='td1'>작성자</td><td><input type=text name=fqa_name class='txt' id=fqa_name value='${home.member_name}' readonly></td>
             </tr>
             <tr>
                 <td class='td1'>문의 종류</td><td><select id=fqa_sel name='ca'>
                                         <option value='회원정보및 로그인 관련'>회원정보및 로그인 관련</option>
                                         <option value='결재 및 구매관련'>결재 및 구매관련</option>
                                         <option value='기타문의'>기타문의</option>
                                     </select></td>
             </tr>
             <tr>
                 <td class='td1'>내용</td><td><textarea name=content rows=10 id=fqa_content class='txt2'></textarea></td>
             </tr>
             <tr>
                 <td colspan=2 align="right"><input type="submit" value="글쓰기" class=btn>&nbsp;&nbsp;
                 <a class=v href="fqa_list?pageNum=1">목록보기</a></td>
             </tr>
             </form>
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
.on('click','#ok',function(){
   $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
})
</script>
</html>