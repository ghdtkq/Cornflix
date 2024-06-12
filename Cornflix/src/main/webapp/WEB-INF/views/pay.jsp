<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제페이지</title>
    <link rel="stylesheet" href="/mvcProject/css/stylemain.css" type="text/css">
<script>
    function button(){
            
         let  options  =document.querySelectorAll(".radio1")  ;
         //alert( options);

         let flag=false;
         for(  let i=0; i< options.length ; i++){
            let item  = options[i];
            //alert( item);
            if( item.checked){
                flag=true;
                break;
            }
         }

         if( flag==false){
            alert("구독 서비스를 선택하세요.");
         }
         
         document.payForm.submit();
        
    }
</script>    
</head>
<body>
    <header>
        <div class="title" style="color: red; text-align: center; font-size: 30px;">영화등록</div>
    </header>
            <div class="maintext">
                귀하에게 딱 맞는 플랜을 선택하세요
                <ul>
                    <li>✔️ 원하는 것을 모두 시청하세요.</li>
                    <li>✔️ 당신만을 위한 추천.</li>
                    <li>✔️ 언제든지 요금제를 변경하거나 취소하세요.</li>
                </ul>
            </div>
            <div class="main">
            <form action="/mvcProject/pay" method="post" name="payForm">
            <div class="main2">
                <div class="pay1" id="pay1">
                    <div class="main2head">
                        <div class="text">광고가 포함된 표준<br>
                            1080p</div>
                        <input type="radio" class="radio1" name="radio" value="1">
                    </div>  
                    <div class="text2">
                        월간 가격  
                    <br>
                    5,500원</div>  
                    <div class="text2">
                        비디오 및 사운드 품질  
                    <br>
                    좋은</div> 
                    <div class="text2">
                        해결 
                    <br>
                    1080p(풀 HD)</div>
                    <div class="text2">
                        지원되는 장치  
                    <br>
                    TV, 컴퓨터, 휴대폰, 태블릿</div>  
                    <div class="text2">
                        가족이 동시에 시청할 수 있는 기기 
                    <br>
                    2
                    </div> 
                    <div class="text2">
                        기기 다운로드  
                    <br>
                    2</div>
                    <div class="text2">
                        광고  
                    <br>
                    몇 가지 광고 시간</div>                        
                </div>
                <div class="pay2" id="pay2">
                    <div class="main2head">
                        <div class="text">기준<br>
                            1080p</div>
                            <input type="radio" class="radio1" name="radio" value="2">
                    </div>
                    <div class="text2">
                        월간 가격  
                    <br>
                    13,500원</div>  
                    <div class="text2">
                        비디오 및 사운드 품질  
                    <br>
                    좋은</div> 
                    <div class="text2">
                       해결  
                    <br>
                    1080p(풀 HD)</div>
                    <div class="text2">
                        지원되는 장치  
                    <br>
                    TV, 컴퓨터, 휴대폰, 태블릿</div>  
                    <div class="text2">
                        가족이 동시에 시청할 수 있는 기기  
                    <br>
                    2</div> 
                    <div class="text2">
                        기기 다운로드  
                    <br>
                    2</div>
                    <div class="text2">
                        광고  
                    <br>
                    광고 없음</div>  
                </div>
                <div class="pay3" id="pay3">
                    <div class="main2head" >
                        <div class="text">프리미엄<br>
                            4K + HDR</div> 
                            <input type="radio" class="radio1" name="radio" value="3">
                    </div>
                        <div class="text2">
                            월간 가격  
                        <br>
                        17,000원</div>  
                        <div class="text2">
                            비디오 및 사운드 품질  
                        <br>
                        최상</div> 
                        <div class="text2">
                            해결  
                        <br>
                        4K(울트라 HD) + HDR</div>
                        <div class="text2">
                            지원되는 장치 
                        <br>
                        TV, 컴퓨터, 휴대폰, 태블릿</div>  
                        <div class="text2">
                            가족이 동시에 시청할 수 있는 기기  
                        <br>
                        4</div> 
                        <div class="text2">
                            기기 다운로드  
                        <br>
                        6</div>
                        <div class="text2">
                            공간 오디오(몰입형 사운드)  
                        <br>
                        포함됨</div> 
                        <div class="text2">
                            광고  
                        <br>
                        광고 없음</div> 
                    </div>
                </div>
                	<button onclick="'mvcProject/index'">다음</button>
                </form>
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