<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mvcPrj.Cornflix"%>
<%@ page import="mvcPrj.CornflixDAO" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/mvcProject/css/index.css" rel="stylesheet" type="text/css">
<link href="/mvcProject/css/reset.css" rel="stylesheet" type="text/css">
<script src="/mvcProject/js/index.js"></script>
</head>
<body>
<div class="wrap">
   
   <div class="nav-main">
      <%@ include file="nav.jsp" %>
   </div>
   
   <div class="video-container"> <!-- 비디오 또는 이미지 컨테이너 -->
       <video id="pm" src="/mvcProject/video/pm.mp4" autoplay></video>
         <img id="endImage" src="/mvcProject/img/ppm.png" style="display: none;">
   </div>


   <div class="description"> <!-- 메인 설명  -->
   <img src="/mvcProject/img/pm.png">
    <p>
       수상한 묘를 이장한 풍수사와 장의사, <br>
        무속인들에게 벌어지는 기이한 사건을 <br>
        담은 오컬트 미스터리 영화
   </p>
    <div class="buttons">  
      <form action="movie" method="get">
         <button class="button" type="submit">재생</button>
      </form>
        <button class="info">
           <img src="/mvcProject/img/info.png">
         <span>상세 정보</span>
      </button>
        </div>  
    </div>
    
    <div id="movieDetails" class="detailed-info hidden">
        <span class="close-button" onclick="showDetailedInfo()">&times;</span>
       <h2>영화 상세 정보</h2>
    </div>
    
    <div class="age-info"> 
        <img id="muteButton" src="/mvcProject/img/unmute.png" onclick="mute()">
       <div class="age">15+</div>
    </div>
     
     <%
      CornflixDAO dao = new CornflixDAO();
   
       ArrayList<Cornflix> highViewsList = dao.getHighViewsMovies();
   
       ArrayList<Cornflix> recentList = dao.getRecentMovies();
       
       ArrayList<Cornflix> highViewsList_해외 = dao.getHighViewsMovies_해외();
       
       ArrayList<Cornflix> recentList_해외 = dao.getRecentMovies_해외();
   %>
     
    <div class="movie-container"> <!-- 메인 이미지 슬라이더 -->
       <div class="movie-card movie-card-krBest">
           <h2 class="title">
               <div>한국영화 BEST</div> <!-- 시리즈 제목 -->
           </h2>
           <div class="slider">
               <%
             for (Cornflix cornflix : highViewsList) {
            %>
               <div class="slider-item slider-item-0">
                   <div class="title-card title-card-0">
                       <div class="img-box"><!-- 썸네일. sql -->
                           <img src="<%= cornflix.getMovie_img() %>" alt="">
                       </div>   
                       
                       <div class="hidden-box">
                           <div class="hidden-video-box">
                               <a href="#"> <!-- 영상. sql -->
                                   <video src="/mvcProject/video/pm.mp4" class="hidden-video" autoplay></video> <!-- 트레일러. sql -->
                               </a>
                           </div>
                           <div class="hidden-text-box">
                               <div class="icon-box">
                                   <img src="/mvcProject/img/movie-hidden-play.png" alt="" width="35">
                                   <img src="/mvcProject/img/movie-hidden-plus.png" alt="" width="35" class="plus-icon" onclick="check()">
                                   <img src="/mvcProject/img/movie-hidden-info-left.png" alt="" class="info-icon"  width="35" onclick="toggleInfo( this)"> <!-- 더보기 -->
                               </div>
                               <div class="line-box">
                                   <div class="line-1">
                                       <span>"<%= cornflix.getMovie_title() %>"</span> <!-- 제목. sql -->
                                       <span><%= cornflix.getMovie_age() %>+</span> <!-- 연령. sql -->
                                   </div> 
                                   <div class="line-2">
                                       <span><%= cornflix.getMovie_genre() %></span> <!-- 장르. sql -->
                                       <span class="vew">조회수. <%= cornflix.getMovie_views() %></span> <!-- 조회수. sql -->
                                   </div> 
                               </div>
                               <div class="movie-info hidden">                                    
                                  <span><a>감독 :</a> <%= cornflix.getMovie_director() %></span> <br>
                                   <span><a>출연진 :</a> <%= cornflix.getMovie_cast() %></span> <br>
                                   <span><a>줄거리</a></span>
                                   <span><%= cornflix.getMovie_story() %></span> <br>
                                   <span><a>공개일자 :</a> <%= cornflix.getMovie_date() %></span> <br>
                                   <span><a>제작사 :</a> <%= cornflix.getMovie_company() %></span> <br>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
            <% } %>
            
               <div class="slider-item slider-item-last">
                   <div class="title-card title-card-0">
                       <a href="#">
                           <div class="item-last"><!-- 썸네일. sql -->
                               <span>더보기</span>
                           </div>   
                       </a>
                   </div>
               </div>
           </div>
           
           <button class="prev-btn">&#10094;</button>
           <button class="next-btn">&#10095;</button>
       </div>    
       
       
       <div class="movie-card movie-card-krLatest">
           <h2 class="title">
               <div>최신 한국영화</div> <!-- 시리즈 제목 -->
           </h2>
           <div class="slider">
               <%
             for (Cornflix cornflix : recentList) {
            %>
               <div class="slider-item slider-item-0">
                   <div class="title-card title-card-0">
                       <div class="img-box"><!-- 썸네일. sql -->
                           <img src="<%= cornflix.getMovie_img() %>" alt="">
                       </div>   
                       
                       <div class="hidden-box">
                           <div class="hidden-video-box">
                               <a href="#"> <!-- 영상. sql -->
                                   <video src="/mvcProject/video/pm.mp4" class="hidden-video" autoplay muted></video> <!-- 트레일러. sql -->
                               </a>
                           </div>
                           <div class="hidden-text-box">
                               <div class="icon-box">
                                   <img src="/mvcProject/img/movie-hidden-play.png" alt="" width="35">
                                   <img src="/mvcProject/img/movie-hidden-plus.png" alt="" width="35" class="plus-icon" onclick="check()">
                                   <img src="/mvcProject/img/movie-hidden-info-left.png" alt="" class="info-icon"  width="35" onclick="toggleInfo( this)"> <!-- 더보기 -->
                               </div>
                               <div class="line-box">
                                   <div class="line-1">
                                       <span>"<%= cornflix.getMovie_title() %>"</span> <!-- 제목. sql -->
                                       <span><%= cornflix.getMovie_age() %>+</span> <!-- 연령. sql -->
                                   </div> 
                                   <div class="line-2">
                                       <span><%= cornflix.getMovie_genre() %></span> <!-- 장르. sql -->
                                       <span class="vew">조회수. <%= cornflix.getMovie_views() %></span> <!-- 조회수. sql -->
                                   </div> 
                               </div>
                               <div class="movie-info hidden">                                    
                                  <span><a>감독 :</a> <%= cornflix.getMovie_director() %></span> <br>
                                   <span><a>출연진 :</a> <%= cornflix.getMovie_cast() %></span> <br>
                                   <span><a>줄거리</a></span>
                                   <span><%= cornflix.getMovie_story() %></span> <br>
                                   <span><a>공개일자 :</a> <%= cornflix.getMovie_date() %></span> <br>
                                   <span><a>제작사 :</a> <%= cornflix.getMovie_company() %></span> <br>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
            <% } %>
            
               <div class="slider-item slider-item-last">
                   <div class="title-card title-card-0">
                       <a href="#">
                           <div class="item-last"><!-- 썸네일. sql -->
                               <span>더보기</span>
                           </div>   
                       </a>
                   </div>
               </div>
           </div>
           
           <button class="prev-btn">&#10094;</button>
           <button class="next-btn">&#10095;</button>
       </div>   
       <div class="movie-card movie-card-krLatest">
           <h2 class="title">
               <div>해외영화 BEST</div> <!-- 시리즈 제목 -->
           </h2>
           <div class="slider">
               <%
             for (Cornflix cornflix : highViewsList_해외) {
            %>
               <div class="slider-item slider-item-0">
                   <div class="title-card title-card-0">
                       <div class="img-box"><!-- 썸네일. sql -->
                           <img src="<%= cornflix.getMovie_img() %>" alt="">
                       </div>   
                       
                       <div class="hidden-box">
                           <div class="hidden-video-box">
                               <a href="#"> <!-- 영상. sql -->
                                   <video src="/mvcProject/video/pm.mp4" class="hidden-video" autoplay muted></video> <!-- 트레일러. sql -->
                               </a>
                           </div>
                           <div class="hidden-text-box">
                               <div class="icon-box">
                                   <img src="/mvcProject/img/movie-hidden-play.png" alt="" width="35">
                                   <img src="/mvcProject/img/movie-hidden-plus.png" alt="" width="35" class="plus-icon" onclick="check()">
                                   <img src="/mvcProject/img/movie-hidden-info-left.png" alt="" class="info-icon"  width="35" onclick="toggleInfo( this)"> <!-- 더보기 -->
                               </div>
                               <div class="line-box">
                                   <div class="line-1">
                                       <span>"<%= cornflix.getMovie_title() %>"</span> <!-- 제목. sql -->
                                       <span><%= cornflix.getMovie_age() %>+</span> <!-- 연령. sql -->
                                   </div> 
                                   <div class="line-2">
                                       <span><%= cornflix.getMovie_genre() %></span> <!-- 장르. sql -->
                                       <span class="vew">조회수. <%= cornflix.getMovie_views() %></span> <!-- 조회수. sql -->
                                   </div> 
                               </div>
                               <div class="movie-info hidden">                                    
                                  <span><a>감독 :</a> <%= cornflix.getMovie_director() %></span> <br>
                                   <span><a>출연진 :</a> <%= cornflix.getMovie_cast() %></span> <br>
                                   <span><a>줄거리</a></span>
                                   <span><%= cornflix.getMovie_story() %></span> <br>
                                   <span><a>공개일자 :</a> <%= cornflix.getMovie_date() %></span> <br>
                                   <span><a>제작사 :</a> <%= cornflix.getMovie_company() %></span> <br>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
            <% } %>
            
               <div class="slider-item slider-item-last">
                   <div class="title-card title-card-0">
                       <a href="#">
                           <div class="item-last"><!-- 썸네일. sql -->
                               <span>더보기</span>
                           </div>   
                       </a>
                   </div>
               </div>
           </div>
           
           <button class="prev-btn">&#10094;</button>
           <button class="next-btn">&#10095;</button>
       </div>    
       <div class="movie-card movie-card-krLatest">
           <h2 class="title">
               <div>최신 해외영화</div> <!-- 시리즈 제목 -->
           </h2>
           <div class="slider">
               <%
             for (Cornflix cornflix : recentList_해외) {
            %>
               <div class="slider-item slider-item-0">
                   <div class="title-card title-card-0">
                       <div class="img-box"><!-- 썸네일. sql -->
                           <img src="<%= cornflix.getMovie_img() %>" alt="">
                       </div>   
                       
                       <div class="hidden-box">
                           <div class="hidden-video-box">
                               <a href="#"> <!-- 영상. sql -->
                                   <video src="/mvcProject/video/pm.mp4" class="hidden-video" autoplay muted></video> <!-- 트레일러. sql -->
                               </a>
                           </div>
                           <div class="hidden-text-box">
                               <div class="icon-box">
                                   <img src="/mvcProject/img/movie-hidden-play.png" alt="" width="35">
                                   <img src="/mvcProject/img/movie-hidden-plus.png" alt="" width="35" class="plus-icon" onclick="check()">
                                   <img src="/mvcProject/img/movie-hidden-info-left.png" alt="" class="info-icon"  width="35" onclick="toggleInfo( this)"> <!-- 더보기 -->
                               </div>
                               <div class="line-box">
                                   <div class="line-1">
                                       <span>"<%= cornflix.getMovie_title() %>"</span> <!-- 제목. sql -->
                                       <span><%= cornflix.getMovie_age() %>+</span> <!-- 연령. sql -->
                                   </div> 
                                   <div class="line-2">
                                       <span><%= cornflix.getMovie_genre() %></span> <!-- 장르. sql -->
                                       <span class="vew">조회수. <%= cornflix.getMovie_views() %></span> <!-- 조회수. sql -->
                                   </div> 
                               </div>
                               <div class="movie-info hidden">                                    
                                  <span><a>감독 :</a> <%= cornflix.getMovie_director() %></span> <br>
                                   <span><a>출연진 :</a> <%= cornflix.getMovie_cast() %></span> <br>
                                   <span><a>줄거리</a></span>
                                   <span><%= cornflix.getMovie_story() %></span> <br>
                                   <span><a>공개일자 :</a> <%= cornflix.getMovie_date() %></span> <br>
                                   <span><a>제작사 :</a> <%= cornflix.getMovie_company() %></span> <br>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
            <% } %>
            
               <div class="slider-item slider-item-last">
                   <div class="title-card title-card-0">
                       <a href="#">
                           <div class="item-last"><!-- 썸네일. sql -->
                               <span>더보기</span>
                           </div>   
                       </a>
                   </div>
               </div>
           </div>
           
           <button class="prev-btn">&#10094;</button>
           <button class="next-btn">&#10095;</button>
       </div>     
   </div>
    
    
   <div class="footer-container">
      <%@ include file="footer.jsp" %>
   </div>
</div> <!-- .wrap -->


</body>
</html>