<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/mvcProject/css/reset.css" rel="stylesheet" type="text/css">	
</head>
<style>
.footer-container {
    color: rgb(119, 119, 119);
    width: 960px;
    left: 50%;
    transform: translate(-50%, -50%);
    position: absolute;
    bottom: 0px;
}

.footer-icon svg{
    margin: 5px 10px 20px 10px;
    width: 30px;
    height: 30px;
}

.footer-text-box div {
    font-size: 12px;
    margin: 10px 0;
}

.footer-table table{
    width: 100%;
}
.footer-table td {
    padding-bottom: 20px;
}

.footer-table a{
    font-size: 12px;
    color: rgb(119, 119, 119);
}
.footer-table td:hover a{
    text-decoration: underline;
}
</style>
<body>
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
	                    <td><a href="#">고객 센터</a></td>
	                    <td><a href="#">이용 약관</a></td>
	                    <td><a href="#">쿠키 설정</a></td>
	                </tr>
	                <tr>
	                    <td><a href="#">회사 정보</a></td>
	                    <td><a href="#">입사 정보</a></td>
	                    <td><a href="#">문의하기</a></td>
	                </tr>
	            </table>
	        </div>
	
	        <div class="footer-text-box"> <!-- footer-text-box -->
	            <div class="footer-text01">대한민국 최고의 OTT 서비스 | 얕은 영화부터 딥한 영화까지</div>
	            <div class="footer-text02">(주)AcornTV | 서울특별시 마포구 양화로 122 LAB7 빌딩 3층, 4층 | <strong>TEL: 010-3370-8535</strong></div>
	            <div class="footer-text03">Acorn team: 김종범 김기엽 양홍섭 윤성진 정기원</div>
	            <div class="footer-text04">COPYRIGHT(C) HBILAB. ALL RIGHTS RESERVED.</div>
	        </div>
	
	    </footer>
	</div> 
</body>
</html>