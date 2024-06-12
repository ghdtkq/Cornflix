<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mvcPrj.Cornflix"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/mvcProject/css/reset.css" rel="stylesheet" type="text/css">
<style>
/* 헤더 */
.nav-main{
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    right: 0;
    background: linear-gradient(to top, rgba(46, 48, 48, 0), rgb(20, 20, 20));
    transition: background-color 0.3s; 
    z-index: 999; 
}

.nav-main.transparent {
    background: linear-gradient(to top, rgba(25, 26, 26, 0.75), rgb(12, 12, 12));
}

.nav-container{
    display: flex;
    margin-left: 50px;
    padding: 10px;  
    font-size: 18px;
}

.conflix-logo{
    width: 120px;
    height: 70px;
    margin-right: 50px;
    margin-top: 5px;
}

.nav-ul{
    list-style-type: none;
    display: flex;
    width: 1000px;
    margin-top: 27px;
    text-decoration : none;
}

.nav-ul li{
    margin-right: 40px;
    font-size: 20px;
}

.nav-ul li a:hover{
    color: grey;
}

.nav-sub{
    position: absolute;
    display: flex;
    right: 20px;
    margin-top: 20px;
    align-items: center;
}

.search-icon{
    width: 42px;
    height: 42px;
}

.profile-icon{
    margin-top: -4px;
    margin-right: 20px;
    width: 46px;
    height: 46px;
}

.nav-sub-search, .nav-sub-profile {
    margin-right: 30px;
    cursor: pointer;
    position: relative;
}

.search-input {
    display: none; 
    position: absolute;
    right: 100%; 
    width: 220px; 
    margin-right: 10px;
    padding: 14px;
    border: none; 
    border-radius: 5px; 
    font-size: 14px; 
    box-shadow: 0 2px 5px rgba(0,0,0,0.2); 
    background-color: #333;
    color: #fff; 
}

.profile-menu {
    display: none; 
    position: absolute;
    top: 90%;
    right: 40px;
    padding: 6px;
    background-color: #333; 
    border-radius: 5px; 
    box-shadow: 0 2px 5px rgba(0,0,0,0.2); 
    z-index: 100; 
}

.profile-menu ul {
    list-style: none; 
    margin: 0; 
    padding: 0; 
}

.profile-menu li {
    font-size: 16px;
    padding: 20px 14px;
    border-bottom: 1px solid #cdcdcd; 
}

.profile-menu li:last-child {
    border-bottom: none; 
}

.profile-menu li a {
    text-decoration: none;
    color: #cdcdcd; 
    display: block; 
}

.profile-menu.active {
    display: block; 
}

.active + .search-input,
.active + .profile-menu {
    display: block;
}
</style>
</head>

<body>
	<div class="nav-main" id="header">
	    <div class="nav-container">
	        <div> <!-- 로고 -->
	            <a href="#">
	                <img class="conflix-logo" src="/mvcProject/img/CORN.png">
	            </a>
	        </div>
	        <div>
	            <ul class="nav-ul"> <!-- 메뉴 -->
	                <li><a href="index">홈</a></li>
	                <li><a href="/mvcProject/kor">국내 영화</a></li>
	                <li><a href="/mvcProject/for">해외 영화</a></li>
	                <li><a href="#">NEW! 새로 나온 영화</a></li>
	                <li><a href="#">내가 찜한 영화</a></li>
	            </ul>
	        </div>
	
	        <div class="nav-sub"> <!-- 검색, 프로필 -->
	            <div class="nav-sub-search" id="searchIcon">
	                <svg class="search-icon" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0,0,256,256">
	                    <g fill="#ffffff" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.12,5.12)"><path d="M21,3c-9.39844,0 -17,7.60156 -17,17c0,9.39844 7.60156,17 17,17c3.35547,0 6.46094,-0.98437 9.09375,-2.65625l12.28125,12.28125l4.25,-4.25l-12.125,-12.09375c2.17969,-2.85937 3.5,-6.40234 3.5,-10.28125c0,-9.39844 -7.60156,-17 -17,-17zM21,7c7.19922,0 13,5.80078 13,13c0,7.19922 -5.80078,13 -13,13c-7.19922,0 -13,-5.80078 -13,-13c0,-7.19922 5.80078,-13 13,-13z"></path></g></g>
	                </svg>
	            </div>
	            <input type="text" class="search-input" placeholder="제목, 사람, 장르" />
	
	            <div id="profileIcon" class="nav-sub-profile" >
	                <img class="profile-icon" src="/mvcProject/img/profile.png">
	            </div>
	        </div> 
	        <div class="profile-menu">
	            <ul>
	                <li><a href="/mvcProject/mypage">계정관리</a></li>
	                <li><a href="/mvcProject/customer">고객센터</a></li>
	                <li><a href="/mvcProject/">로그아웃</a></li>
	            </ul>
	        </div>
	    </div>
	</div>
	
<script src="/mvcProject/js/index.js"></script>
</body>
</html>