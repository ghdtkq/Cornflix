<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/mvcProject/css/reset.css" rel="stylesheet" type="text/css">
    <link href="/mvcProject/css/reg.css" rel="stylesheet" type="text/css">
    <script>
    	let IdValid = true;	
    	
        window.onload = function(){
            /* 체크박스 모두체크 */
            let selectAll = document.querySelector("#selectAll");
            let checkAll1 = document.querySelectorAll(".item1");
            let checkAll2 = document.querySelectorAll(".item2");
            
            selectAll.addEventListener('change',function(){
                checkAll1.forEach(function(checkbox){
                    checkbox.checked = selectAll.checked;
                });
             
            });

            selectAll.addEventListener('change',function(){
                checkAll2.forEach(function(checkbox){
                    checkbox.checked = selectAll.checked;
                });
             
            });
			/* ID 중복검사 */
    		var ids = JSON.parse('<%=request.getAttribute("id")%>');
    		
            /* 회원가입 설명 메세지 */
            let inputID = document.querySelector("#id");
            let msgID = document.querySelector(".msgID");
            inputID.addEventListener('input',function(){
                if(inputID.value==""){
                    msgID.innerHTML = '<div style="color: #f70f30;">입력된 값이 없습니다.</div>';
                }else{
                    msgID.innerHTML = '<div style="color:#f70f30;">소문자 또는 영문 소문자, 숫자 조합 6~12 자리</div>'
                };
                for(let i=0 ; i<ids.length ; i++){ 
                    if(inputID.value==ids[i]){
                    	 msgID.innerHTML = '<div style="color: #f70f30;">이미 사용중인 ID 입니다.</div>';
                    	 IdValid = false;
                    }else{
                    	IdValid = true;
                    }
               }

            });
			
            let inputPW = document.querySelector("#pw");
            let msgPW = document.querySelector(".msgPW");
            inputPW.addEventListener('input',function(){
                
                if(inputPW.value==""){
                    msgPW.innerHTML = '<div style="color: #f70f30;">입력된 값이 없습니다.<div>';
                }else{
                    msgPW.innerHTML = '<div style="color:#f70f30;">영문, 숫자, 특수문자(~!@#$%^&*) 조합 8~15 자리</div>'
                }
            });

            let inputPWcheck = document.querySelector("#pwcheck");
            inputPWcheck.addEventListener('input',function(){
                if(inputPW.value!=inputPWcheck.value){
                msgPW.innerHTML = '<div style="color: #f70f30;">비밀번호가 같지 않습니다.</div>';
                }else{
                    msgPW.innerHTML = "비밀번호가 일치합니다."
                    
                }
            });

            let inputPhone = document.querySelector('#phone');
            inputPhone.addEventListener('input',function(){
                let msgPhone = document.querySelector(".msgPhone");
                msgPhone.innerHTML ='<div style="color:#f70f30;">-를 제외한 핸드폰 번호 10자리 또는 11자리</div>'
            });

            let inputDate = document.querySelector('#date');
            inputDate.addEventListener('input',function(){
                let msgDate = document.querySelector(".msgDate");
                msgDate.innerHTML ='<div style="color:#f70f30;">Ex)1996-05-01</div>'
            });

            /* 영문소문자 , 숫자만 타이핑 가능*/
            document.getElementById('id').addEventListener('input', function(e) {
                this.value = this.value.replace(/[^a-z0-9]/g, '');
            });
            /* 이메일 양식 검사 */
                let email = document.querySelector('#email');
                email.addEventListener('input',function(){
                this.value = this.value.replace(/[^a-z@.0-9]/g, '');
                let emailValue = email.value;
                
                function validateEmail(emailValue) {
                // 이메일에 '@'와 '.'가 포함되어 있는지 확인
                var atSymbol = emailValue.indexOf("@");
                var dot = emailValue.lastIndexOf(".");
                
                // '@'가 없거나, 맨 처음이나 끝에 위치한 경우 유효하지 않음
                if (atSymbol < 1) return false;

                // '.'가 '@' 이후에 하나 이상 있어야 하며, 마지막 '.' 이후에 최소 2개의 문자가 있어야 함
                if (dot <= atSymbol + 2) return false;

                // 이메일의 마지막에서 '.' 다음에 최소 2개 문자가 있어야 함
                if (dot === email.length - 1) return false;

                return true;
                };
                if (!validateEmail(emailValue)) { // 유효하지 않은 경우
                    let msgEmail = document.querySelector('.msgEmail');
                    msgEmail.innerHTML = '<div style="color:#f70f30;">유효한 이메일 형식이 아닙니다.</div>';
                }else{
                    document.querySelector('.msgEmail').innerHTML = ''; // 유효한 경우, 메시지 초기화
                    return true;
                };
            });
            /* 숫자만 입력 가능하며 input이  11자를 넘을수 없음 */
            const numericInput = document.getElementById('phone');

                numericInput.addEventListener('input', function() {
                    
                    this.value = this.value.replace(/[^0-9]/g, '');

                    
                    if (this.value.length > 11) {
                        this.value = this.value.slice(0, 11);
                    }
                });
            
            /* 생년월일 양식 자동완성 */
            const birthdateInput = document.getElementById('date');

                birthdateInput.addEventListener('input', function() {
                    var input = this.value;

                    input = input.replace(/[^0-9]/g, '');

                    // 자동으로 "-"를 추가합니다.
                    if (input.length > 4 && input.length <= 6) {
                        input = input.slice(0,4) + '-' + input.slice(4);
                    } else if (input.length > 6) {
                        input = input.slice(0,4) + '-' + input.slice(4,6) + '-' + input.slice(6,8);
                    }

                    this.value = input;
                });
            
        }
        

        /* 유효성 검사 */
        
        /* ID 양식 검사 */
        function checkID(){
            
            let idcheck = document.querySelector('#id').value;
            if(idcheck.length >= 6 && idcheck.length <= 12 ){
                return true;
            }else{
                return false;
            }
        };

        /* 패스워드 양식 검사 */
        function checkInput() {
            var pw = document.getElementById('pw').value;
            // 정규 표현식: 영문, 숫자, 특수문자(~!@#$%^&*) 조합, 8~15자리
            var regex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[~!@#$%^&*]).{8,15}$/;

            if (regex.test(pw)) {
                return true;
            } else {
                return false;
            }
        };

        /* 패스워드 와 패스워드 확인 일치 검사 */
        function pwcheck(){
            let pw = document.querySelector('#pw').value;
            let pwcheck = document.querySelector('#pwcheck').value;
            if(pw == pwcheck){
                return true;
            }else{
                return false;
            }
        };
        /* 체크박스 유효성 검사 */
        
        function checkbox() {
		    let checkboxes = document.querySelectorAll(".item1");
		    for (let i = 0; i < checkboxes.length; i++) {
		        if (!checkboxes[i].checked) {
		            return false;
		        }
		    }
		    return true;
		}
        
        /* 전화번호가 10자리 혹은 11자리 인지 검사*/
        
        function phonecheck(){
        	
            let phonecheck = document.querySelector('#phone').value;
            if(phonecheck.length >= 10 && phonecheck.length <= 11 ){
                return true;
            }else{
                return false;
            }
        };
        /* 생년월일 10자리가 정확히 입력됐는지 검사*/
        function datecheck(){
            let datecheck = document.querySelector('#date').value;
            if(datecheck.length == 10){
                return true;
            }else{
                return false;
            }
        }
        
        /* 모든값이 정확하게 입력됐는지 검사 */
        
        function subMit(event){
            if(checkID() && checkInput() && pwcheck() && checkbox() && IdValid && phonecheck() && datecheck()){
                alert("성공적으로 가입 됐습니다.");
            }else{
                alert("가입양식을 확인해주세요");
                event.preventDefault();
                return false; 
            }
        }
    </script>

</head>
<body>

    <section>
    
        <div class="wrap">	
            <!--타이틀-->
            <div class="title">
                <h3 style='color:#ffffff;'>CORNFLIX 회원가입</h3>
                <p style="color:#94a3a3;">아이디와 이메일로 간편하게 시작하세요</p>
            </div>
            <!--입력 Form-->
            <form id="regForm" onsubmit="return subMit(event)" method="post" action="/mvcProject/regpage">
                <div class="regForm">
                    <input type="text" placeholder="아이디" id="id" name="id">
                    <p class="msgID"></p>
                    <input type="password" placeholder="비밀번호" id="pw" name="pw">
                    <input type="password" placeholder="비밀번호 확인" id="pwcheck">
                    <p class="msgPW"></p>
                    <input type="text" placeholder="이름" id="name" name="name">
                    <p class="nameMSG"></p>
                    <input type="text" placeholder="전화번호" id="phone" name="phone">
                    <p class="msgPhone"></p>
                    <input type="text" placeholder="생년월일" id="date" name="date">
                    <p class="msgDate"></p>
                    <input type="text" placeholder="이메일" id="email" name="email">
                    <p class="msgEmail"></p>
                </div>
        </div >
            <!--체크박스-->
        <div class="checkboxwrap">
            <div class="checkbox">
                <ul>
                    <li><input type="checkbox" id="selectAll">필수 및 선택 항목을 모두 포함하여 동의합니다.</li>
                    <li><input type="checkbox" class="item1">만 14세 이상입니다.</li>
                    <li><input type="checkbox" class="item1">[필수] 서비스 이용약관 동의자세히보기</li>
                    <li><input type="checkbox" class="item1">[필수] 개인정보 수집 및 이용 동의자세히보기</li>
                    <li><input type="checkbox" class="item2">[선택] 개인정보 수집 및 이용 동의자세히보기</li>
                    <li><input type="checkbox" class="item2">[선택] 마케팅 정보 수신 동의</li>
                    <button type="submit">가입하기</button>
                </ul>
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