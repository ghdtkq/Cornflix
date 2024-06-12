<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/mvcProject/css/reset.css" rel="stylesheet" type="text/css">
    <link href="/mvcProject/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>
    <section>
        <div class="wrap">
            <!--로그인form-->
            <div class="title">
                <h3 style='color:#ffffff;'>CORNFLIX 로그인</h3>
            </div>
            <!--입력 Form-->
            <form action="/mvcProject/logpage" method="post" name="loginForm">
                <div class="regForm">
                    <input type="text" placeholder="아이디" id="id" name="id">
                    <p class="msgID"></p>
                    <input type="password" placeholder="비밀번호" id="pw" name="pw">
                     <c:if>
        				<p style="color:red">${errormsg}</p>
   					 </c:if>		
                </div>
        </div>
            <!--체크박스-->
        <div class="checkboxwrap">
            <div class="checkbox">
                <ul class="button" type="submit">
                    <button>로그인하기</button>
                </ul>
                    <a href="" class="idQ2">아이디 찾기</a>
                    <a href="" class="idQ">비밀번호 찾기</a>
                    <div class="join">
                        아직 계정이 없으신가요? <a href="">회원 가입하기</a>
                    </div>
            </div>
            </form>
        </div>
    </section>
    <footer>
        <!--푸터 상단-->
        <nav class="footernav">
            <a href="">고객센터</a>
            <a href="#">이용약관</a>
            <a href="#">개인정보처리방침</a>
            <a href="#">청소년보호정책</a>
            <a href="#">법적고지</a>
        </nav>
        <div class="footer_2">
            <p>대표이사 : 양홍섭  사업자등록번호 : 188-88-01893 통신판매신고번호 : 2020-서울마포-3641호</p>
            <p>사업장 : 서울특별시 마포구 상암산로 34, DMC디지털큐브 15층(상암동)호스팅사업자 : 씨제이올리브네트웍스(주)</p>
            <p>고객센터 (평일 09시~17시/점심시간 13시~14시)1:1 게시판 문의대표메일 : tving@cj.net전화번호(ARS) : 1670-1525 (챗봇/채팅 상담 연결)</p>
            <p>ENM 시청자 상담실 (편성 문의 및 시청자 의견) : 080-080-0780 : Mnet 고객센터(방송편성문의) : 1855-1631</p>
        </div>
    </footer>
</body>
</html>