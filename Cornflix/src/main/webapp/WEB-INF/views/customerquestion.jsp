<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터</title>
    <link rel="stylesheet" href="/mvcProject/css/stylequestion2.css" type="text/css">
    <script>
    function ck(){
        if(document.myForm.radio01.value==""){
            alert("문의 유형을 선택하세요.");
            document.myForm.radio01.focus();
            return false;
        }
        else if(document.myForm.text1.value=="" || !validateEmail(document.myForm.text1.value)){
            alert("올바른 이메일을 입력하세요.");
            document.myForm.text1.focus();
            return false;
        }
        else if(document.myForm.select1.value=="선택"){
            alert("옵션을 선택하세요.");
            document.myForm.select1.focus();
            return false;
        }else if(document.myForm.select2.value=="선택"){
            alert("옵션2을 선택하세요.");
            document.myForm.select2.focus();
            return false;
        }else if(document.myForm.select3.value=="선택"){
            alert("옵션3을 선택하세요.");
            document.myForm.select3.focus();
            return false;
        }else if(document.myForm.textarea1.value==""){
            alert("내용을 입력하세요.");
            document.myForm.textarea1.focus();
            return false;
        }else if(!document.myForm.checkbox.checked){
            alert("동의 여부를 체크하세요.");
            document.myForm.checkbox.focus();
            return false;
        }
        if (confirm("게시글을 올리면 수정이 불가능합니다. 계속하시겠습니까?")) {
            document.myForm.submit(); // 확인을 선택한 경우 폼 제출
        } else {
            return false; // 취소를 선택한 경우 폼 제출 취소
        }
    }

    function validateEmail(email) {
        var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        return emailPattern.test(email);
    }
    
    function countCharacters() {
        var text = document.getElementById("inputText").value;
        var charCount = text.length;
        document.getElementById("charCount").innerText = charCount + " / 1,000";
    }


        </script>
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
    <div class="main">
        <nav ><h4 style="color: white;">문의 및 신고<p> <h6 style="color: gray;">문의 내용을 입력하세요.</h6></h4></nav>
        <form method="post" name="myForm" action="/mvcProject/customerquestion" onsubmit="return ck()">
            <input type="radio" class="radio01" name="radio01" value="문의">&nbsp;<a>문의</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" class="radio01" name="radio01" value="제안">&nbsp;<a>제안</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" class="radio01" name="radio01" value="신고">&nbsp;<a>신고</a>
            <br><br>
            <input type="text" style="width: 1600px; height: 30px; color: gray;" placeholder="@를 포함한 메일 주소" name="text1" id="emailInput">
            <br><br><br>
            <select style="width: 1600px; height: 30px; color: gray;" name="select1">
                <option value="선택">선택</option>
                <option value="안드로이드폰">안드로이드폰</option>
                <option value="이어폰">이어폰</option>
                <option value="안드로이드탭">안드로이드탭</option>
                <option value="아이패드">아이패드</option>
                <option value="윈도우폰">윈도우폰</option>
                <option value="기타">기타</option>
            </select><br>
            <select style="width: 1600px; height: 30px; color: gray;" name="select2">
                <option value="선택">선택</option>
                <option value="모바일웹">모바일웹</option>
                <option value="모바일앱">모바일앱</option>
                <option value="기타">기타</option>
            </select><br>
            <select style="width: 1600px; height: 30px; color: gray;" name="select3">
                <option value="선택">선택</option>
                <option value="사이트이용">사이트이용</option>
                <option value="회원/로그인">회원/로그인</option>
                <option value="모바일">모바일</option>
                <option value="요금/결제/해지신청">요금/결제/해지신청</option>
                <option value="장애신고">장애신고</option>
                <option value="컨텐츠/채널">컨텐츠/채널</option>
                <option value="기타">기타</option>
            </select>
            <br><br>
            <textarea id="inputText" name="textarea1" style="width:1600px; height:100px;" placeholder="정확한 안내를 위해 문의 내용을 자세히 작성해 주세요. 디바이스 종류 (갤럭시S4, 아이폰5 등) 이용시간 / 이용채널 / 3G or Wifi / 문의 내용" oninput="countCharacters()"></textarea>
                <p id="charCount" style="padding-top: 4px; color: gray;">0 / 1,000</p>
            <label for="agree"><input type="checkbox" name="checkbox" style="width: 15px; height: 15px; margin-top: 15px;"><a style="color: white;">&nbsp;개인정보 수집에 동의합니다.</a></label>
            <br><br>     
    </form>
       </div>
    <div class="divbutton">
    <input type="button" onclick="ck()" class="button2" value="제출하기"><input type="button" onclick="document.location='/mvcProject/customer'" class="button3" value="취소">
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
        </div>
</body>
</html>