<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터</title>
    <link rel="stylesheet" href="/mvcProject/css/stylequestion.css"  type="text/css">
</head>
<body>
<header><a href="" style="color: red; text-decoration: none; font-size: 30px;"><img src="/mvcProject/img/cornflix.png"></a></header>    
    <ul class="dropdownmenu">
        <li class="menu1"><a href="/mvcProject/customer">FAQ</a></li>
        <li class="menu2"><a href="/mvcProject/customerquestion">문의 및 신고</a>
        
        <!--  hidden -->
        	<ul  class="menuH">
                    <li><a href="/mvcProject/customerquestion">문의</a></li>
                    <li><a href="/mvcProject/board">글목록</a></li>
            </ul>
        </li>
    </ul>
    <ul class="dropdownmenu2">
        <li><a href="">전체보기</a></li>
            <li><a href="#membership">회원/로그인</a></li>
            <li><a href="#cancellation">해지/환불</a></li>
            <li><a href="#subscription">이용권/결제</a></li>
            <li><a href="#service">서비스 이용</a></li>
        </ul>
        
    <div class="main">
        <nav id="membership" class="question1"><a href="#membership" style="color: white; text-decoration: none;">회원/로그인</a></nav>
        <nav class="question1"><a href="/p/question1" style="color: white; text-decoration: none;">1.[회원] 회원가입 방법이 궁금해요.</a></nav>
        <nav class="question1"><a href="/p/question2" style="color: white; text-decoration: none;">2.[로그인] 로그인 방법이 궁금해요.</a></nav>
        <nav class="question1"><a href="/p/question3" style="color: white; text-decoration: none;">3.[로그인] 자동 로그아웃이 되었는데, 제 계정을 모르겠어요.</a></nav>
        <nav class="question1"><a href="/p/question4" style="color: white; text-decoration: none;">4.[로그인] 이용권이 있는 계정이 무엇인지 찾고 싶어요.</a></nav>
        <nav class="question1"><a href="/p/question5" style="color: white; text-decoration: none;">5.[로그인] 로그인이 안될 때 고객문의를 남길 수 있는 방법이 있나요?</a></nav>
        <nav class="question1"><a href="/p/question6" style="color: white; text-decoration: none;">6.[인증] 성인인증은 어떻게 하나요?</a></nav>
        <br>
        <br>
        <nav id="cancellation" class="question2"><a href="#cancellation" style="color: white; text-decoration: none;">해지/환불</a></nav>
        <nav class="question2"><a href="/p/question7" style="color: white; text-decoration: none;">1.[변경] 정기결제수단 변경은 어떻게 하나요?</a></nav>
        <nav class="question2"><a href="/p/question8" style="color: white; text-decoration: none;">2.[해지/환불] 청약 철회가 무엇인가요?</a></nav>
        <nav class="question2"><a href="/p/question9" style="color: white; text-decoration: none;">3.[해지/환불] 중도 해지가 무엇인가요?</a></nav>
        <br>
        <br>
        <nav id="subscription" class="question3"><a href="#subscription" style="color: white; text-decoration: none;">이용권/결제</a></nav>
        <nav class="question3"><a href="/p/question10" style="color: white; text-decoration: none;">1.[변경] 정기결제수단 변경은 어떻게 하나요?</a></nav>
       
        <br>
        <br>
        <nav id="service" class="question4"><a href="#service" style="color: white; text-decoration: none;">서비스 이용</a></nav>
        <nav class="question4"><a href="/p/question11" style="color: white; text-decoration: none;">1.[이벤트] 연간 이용권 특별 할인 기간과 금액이 궁금해져요.</a></nav>
    </div>
    <div class="footer-container">
        <footer>
            <div class="footer-icons"> <!-- footer-icon-box -->
                <a href="#" class="footer-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0,0,256,256">
                        <g fill="#ffffff" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.33333,5.33333)"><path d="M29,3c-5.523,0 -10,4.477 -10,10v5h-6v8h6v19h8v-19h7l1,-8h-8v-4c0,-2.209 1.791,-4 4,-4h4v-6.678c-1.909,-0.197 -4.079,-0.326 -6,-0.322z"></path></g></g>
                    </svg>
                </a>
                <a href="https://www.instagram.com/hs_c_12.02/" class="footer-icon" blank>
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0,0,256,256">
                        <g fill="#ffffff" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(9.84615,9.84615)"><path d="M7.54688,0c-4.15625,0 -7.54687,3.39063 -7.54687,7.54688v10.90625c0,4.15625 3.39063,7.54688 7.54688,7.54688h10.90625c4.15625,0 7.54688,-3.39062 7.54688,-7.54687v-10.90625c0,-4.15625 -3.39062,-7.54687 -7.54687,-7.54687zM7.54688,2h10.90625c3.07422,0 5.54688,2.46875 5.54688,5.54688v10.90625c0,3.07422 -2.46875,5.54688 -5.54687,5.54688h-10.90625c-3.07422,0 -5.54687,-2.46875 -5.54687,-5.54687v-10.90625c0,-3.07422 2.46875,-5.54687 5.54688,-5.54687zM20.5,4c-0.82812,0 -1.5,0.67188 -1.5,1.5c0,0.82813 0.67188,1.5 1.5,1.5c0.82813,0 1.5,-0.67187 1.5,-1.5c0,-0.82812 -0.67187,-1.5 -1.5,-1.5zM13,6c-3.85547,0 -7,3.14453 -7,7c0,3.85547 3.14453,7 7,7c3.85547,0 7,-3.14453 7,-7c0,-3.85547 -3.14453,-7 -7,-7zM13,8c2.77344,0 5,2.22656 5,5c0,2.77344 -2.22656,5 -5,5c-2.77344,0 -5,-2.22656 -5,-5c0,-2.77344 2.22656,-5 5,-5z"></path></g></g>
                    </svg>
                </a>
                <a href="#" class="footer-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0,0,256,256">
                        <g fill="#ffffff" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.12,5.12)"><path d="M44.89844,14.5c-0.39844,-2.19922 -2.29687,-3.80078 -4.5,-4.30078c-3.29687,-0.69922 -9.39844,-1.19922 -16,-1.19922c-6.59766,0 -12.79687,0.5 -16.09766,1.19922c-2.19922,0.5 -4.10156,2 -4.5,4.30078c-0.40234,2.5 -0.80078,6 -0.80078,10.5c0,4.5 0.39844,8 0.89844,10.5c0.40234,2.19922 2.30078,3.80078 4.5,4.30078c3.5,0.69922 9.5,1.19922 16.10156,1.19922c6.60156,0 12.60156,-0.5 16.10156,-1.19922c2.19922,-0.5 4.09766,-2 4.5,-4.30078c0.39844,-2.5 0.89844,-6.10156 1,-10.5c-0.20312,-4.5 -0.70312,-8 -1.20312,-10.5zM19,32v-14l12.19922,7z"></path></g></g>
                    </svg>
                </a>
            </div>

            <div class="footer-table">
                <table>
                    <tr>
                        <td><a href="/mvcProject/customer">고객 센터</a></td>
                        <td><a href="#">이용 약관</a></td>
                        <td><a href="#">쿠키 설정</a></td>
                    </tr>
                    <tr>
                        <td><a href="#">회사 정보</a></td>
                        <td><a href="#">입사 정보</a></td>
                        <td><a href="/mvcProject/customerquestion">문의하기</a></td>
                    </tr>
                </table>
            </div>

            <div class="footer-text-box"> <!-- footer-text-box -->
                <div class="footer-text01">대한민국 최고의 OTT 서비스 | 얕은 영화부터 딥한 영화까지</div>
                <div class="footer-text02">(주)CORNFILX | 서울특별시 마포구 양화로 122 LAB7 빌딩 3층, 4층 | <strong>TEL: 010-3370-8535</strong></div>
                <div class="footer-text03">Acorn team: 김종범 김기엽 양홍섭 윤성진 정기원</div>
                <div class="footer-text04">COPYRIGHT(C) HBILAB. ALL RIGHTS RESERVED.</div>
            </div>

        </footer>
</body>
</html>