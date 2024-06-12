<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="myPage.Member" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/mvcProject/css/reset.css" rel="stylesheet" type="text/css">
    <link href="/mvcProject/css/mypage.css" rel="stylesheet" type="text/css">
    <title>Document</title>
    <% Member member = (Member) session.getAttribute("member_data"); %>
    <script>
    window.onload = function(){
    	/* 멤버십 결제날짜에 맞춰 다음 결제일 구하기*/
    	let memberShip = '<%=member.getSubscription_info()%>';
    	let membershipDate = new Date(memberShip);
    	
    	// YYYY-MM-DD 형식으로 날짜 포맷팅
        let nextPaymentDate = membershipDate.toISOString().split('T')[0];
    	
    	let memberShipmsg =  document.querySelector('.memeberP');
      
        /* 다음 결제 예정일 표시*/
	     if (isNaN(membershipDate.getTime())) {
	        // 유효하지 않은 날짜인 경우, 에러 처리
	        document.querySelector('.memeberP').innerHTML = "구독된 상품이 없습니다.";
		    }else{
		        // 유효한 날짜인 경우, 다음 결제일 계산
		        membershipDate.setMonth(membershipDate.getMonth() + 1);
		        let nextPaymentDate = membershipDate.toISOString().split('T')[0];
		        document.querySelector('.memeberP').innerHTML = "다음 결제일은 " + nextPaymentDate + " 입니다.";
		  	};

        
        /* 구독 등급별 이미지 주기*/
        
        
        
    };
    /* 클릭시 창이 보이게*/
    
    /* 비밀번호 변경*/
    function showDiv() {
        var x = document.getElementById('hiddendivPW');
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
    /* 핸드폰 번호 변경 */
        function showphDiv() {
        var x = document.getElementById('hiddendivPH');
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
    /* 창 닫기*/
    function divClose() {
        var x = document.getElementById('hiddendivPW');
        if (x.style.display === "block") {
        	x.style.display = "none";
        } 
    }
    
    function divClosePH() {
        var x = document.getElementById('hiddendivPH');
        if (x.style.display === "block") {
        	x.style.display = "none";
        }
    };
    </script>
    
    <script>
	
    
    function checkpw(){
    	let member_PW = '<%=member.getPw()%>';
    	let inputPW = document.querySelector('#pw').value;
    	let inputrePW = document.querySelector('#repw').value;
    	let inputPWcheck = document.querySelector('#pwcheck').value;
    	
    	if(member_PW!=inputPW){
    		
    		alert("현재 비밀번호가 맞지 않습니다.");
    		return false;
    	};
        /* 패스워드 양식 검사 */
        if(inputPW == inputrePW){
            
        	alert("새 비밀번호는 현재 비밀번호와 달라야 합니다.");
            return false;
        };  
            // 정규 표현식: 영문, 숫자, 특수문자(~!@#$%^&*) 조합, 8~15자리
            var regex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[~!@#$%^&*]).{8,15}$/;
			
            if (!regex.test(inputrePW)) {
            	alert("패스워드는 영문, 숫자, 특수문자(~!@#$%^&*) 조합, 8~15자리 이여야 합니다.");
                return false;
            };
            
      	if(inputrePW!=inputPWcheck){
      		alert("변경 비밀번호가 일치하지 않습니다.");
      		return false;
      	};
      	
      	alert("성공적으로 변경됐습니다.");
      	return true;
      	
    }
    
    
    </script>
    	
    
    <style>
	   .hiddendivPW{
	    position: fixed; 
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 500px; 
	    height: auto; 
	    display: none; 
	    border: 1px solid black; 
	    background-color: white; 
	    padding:30px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
	    z-index: 1000;
	    background-color: black;
	    position: relative;
    	}
    	.hiddendivPW input{
    		margin-bottom:2%;
    		width:100%;
		    height:60px;
		    font-size:18px ;
		    background-color: #212121;
		    border-radius: 10px;
		    border-style:none;
		    color:white;
		    	
    	}
    	.hiddendivPW button{
    		width: 100%;
		    height: 60px;
		    margin-top:20px;
		    text-align: center;
		    background-color: #ff153c;
		    color: #fffff9;
		    border: none;
		    border-radius: 10px;
		    font-size:20px;
		    margin-bottom: 30px;
    	}
    	.hiddendivPW p {
    		text-align:center;
    		font-size: 20px;
    		margin-bottom: 2%;
    	}
    	.hiddendivPW a{
    		position: absolute;
            right: 0;
            top: 0; /* 상단과 우측에 맞춤 */
            padding: 10px;
            font-size: 15px;
    	}
    </style>
</head>
<body>
	
    <div class="wrap">
        <div class="header">
            <h1>계정</h1>
            <h3>멤버십 시작: <%=member.getSubscription_info()%></h3>
        </div>
        <div class="membership_1">
            <div class="member_1_1">
                <h1>멤버십 & 결제정보</h1>
                <form action="">
                    <button>멤버십 해지</button>
                </form>
            </div>
            <div class="member_1_2">
                <p>아이디: <%=member.getId()%><a>계정 변경</a></p>
                <p>비밀번호: *************<a href="javascript:void(0);" onclick="showDiv(event)">비밀번호 변경</a></p>
                <p>전화번호: <%=member.getPhone()%><a href="javascript:void(0);" onclick="showphDiv(event)">휴대폰 번호 변경</a></p>
                <p class="memeberP"></p>
            </div>
        </div>
        <div class="membership_2">
            <div class="member_2_1">
                <h1>멤버십 상세 정보</h1>
            </div>
                <div class="member_2_2">
                    <p><a>멤버십 변경</a></p>
                </div>
        </div>
        <div class="membership_3">
            <div class="member_3_1">
                <h1>보안 & 개인 정보</h1>
            </div>
            <div class="member_3_2">
                <p>이 계정에 대한 접근 권한을 관리하고 가장 최근에<a>엑세스 및 디바이스 관리</a></p>
                <p>사용된 디바이스 등을 확인하세요.<a>모든 디바이스에서 로그아웃</a></p>
                <p><a href="">개인 정보 다운로드</a></p>
            </div>
        </div>
        <!-- 변경관련 히든 DIV -->
        
        <!--  비밀번호 변경하기 -->
        <div class="hiddendivPW" id="hiddendivPW">
        	<form action="/mvcProject/update" method="post" onsubmit="return checkpw()">
	        	<p><a onclick="divClose()" id="close">닫기</a></p>
	        	<p style="color: white; ">비밀번호 변경하기</p>
	        	<input type="password" placeholder="현재 비밀번호" id="pw">
	        	<input type="password" placeholder="변경할 비밀번호" id="repw" name="repw">
	        	<input type="password" placeholder="비밀번호 확인" id="pwcheck">
	        	<button class="hiddenbutton" type="submit">비밀번호 변경</button>
        	</form>
        </div>
        
        <!-- 휴대폰 번호 변경하기 -->
        <div class="hiddendivPW" id="hiddendivPH">
        	<form action="" name="" method="post">
	        	<p><a onclick="divClosePH()" id="close">닫기</a></p>
	        	<p style="color: white; ">전화번호 변경하기</p>
	        	<input type="text" placeholder="현재 전화번호" id="phone">
	        	<input type="text" placeholder="변경할 전화번호" id="rephone">
	        	<input type="text" placeholder="전화번호 확인" id="phonecheck">
	        	<button class="hiddenbutton">전화번호 변경</button>
        	</form>
        </div>
        
        
    </div>
</body>
</html>