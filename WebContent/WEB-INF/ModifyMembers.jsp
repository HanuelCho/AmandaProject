<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>정보수정</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
    
  <!-- 아이콘 link -->
<link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    
     <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>
	#pwcheckbox{
	width:500px;
		height: 25px;

	box-sizing: border-box;
	}
	#pwcheckbox1{
		width: 25%;
		float: left;
	
	}
	</style>
</head>
<body>
    <!-- Left Panel -->

  <!-- 왼쪽 네비 시작 -->

	<!-- 왼쪽 네비 시작 -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="page?url=WEB-INF/main.jsp"><i
							class="menu-icon fa fa-home fa-lg"></i>Home </a></li>
					<li class="menu-item-has-children "><a
						href="page?url=WEB-INF/seat.jsp" onclick="send()"> <i
							class="menu-icon fa fa-desktop fa-lg"></i>잔여좌석
					</a></li>

					<li class="menu-item-has-children"><a
						href="ClientSelect.admin"> <i
							class="menu-icon fa fa-cutlery fa-lg"></i>메뉴
					</a></li>

					<li class="menu-item-has-children"><a
						href="Board.board?currentPage=1"> <i
							class="menu-icon fa fa-comments fa-lg"></i>고객의소리
					</a></li>

					<c:choose>
						<c:when test="${user == null }">
							<li id="charge" class="menu-item-has-children"><a href="#">
									<i class="menu-icon fa fa-usd fa-lg"></i>충전하기
							</a></li>
							<script>
                     
                     
                     $(window).on("resize",function(){
            				if($(window).width() >= 752){
            					$("#left-panel").css("display","block");
            				}				
            			})

                     $("#charge").on("click",function(){
                         alert("로그인 후 이용가능합니다.");
                         $("#loginbtn").trigger("click");

                         
                        
                     })
                  </script>

						</c:when>
						<c:otherwise>
							<li id="charge" class="menu-item-has-children"><a
								href="page?url=WEB-INF/pay.jsp"> <i
									class="menu-icon fa fa-usd fa-lg"></i>충전하기
							</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</nav>
	</aside>
	<!-- 왼쪽 네비 끝 -->
	<!-- 상단 검색바 마이페이지 등등 시작 -->
	<div id="right-panel" class="right-panel">
		<!-- Header-->
		<header id="header" class="header pt-1">
			<div class="top-left">
				<div class="navbar-header">
					<a class="navbar-brand p-0" href="page?url=WEB-INF/main.jsp"><img  src="images/logo5.png"
						alt="Logo"></a> <a class="navbar-brand hidden"
						href="page?url=WEB-INF/main.jsp"><img src="images/logo2.png"
						alt="Logo"></a> <a id="menuToggle" class="menutoggle"><i
						class="fa fa-bars"></i></a>
				</div>
			</div>
			<c:choose>
				<c:when test="${user != null }">
					<div class="top-right">
						<div class="header-menu ">
					
								
								<h5><img src="https://img.icons8.com/color/30/000000/sales-performance.png">
									 <span id="point" ></span>
									</h5>
									<h5><img src="https://img.icons8.com/color/30/000000/alarm-clock.png">
									
										 <span id="timeout" ></span> 
									</h5>
									<c:choose>
									<c:when test="${user.id ne 'admin'}">
										<button type="button" class="btn pr-1 pt-0" id="msg"><img src="https://img.icons8.com/color/35/000000/filled-sent.png"></button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-secondary " id="allmsg">전체msg</button>
									</c:otherwise>
								</c:choose>
								<!-- 	<button type="button" class="btn btn-primary" id="logoutbtn">logout</button>
							 -->
								





							<!-- </div> -->
							<!--  mypage 사람 사진-->
							<div class="user-area  float-right pr-1" >
								<a href="#" class="active" data-toggle="modal"
									aria-haspopup="true" aria-expanded="false"
									data-target="#exampleModal1"> <img
									class="user-avatar rounded-circle " src="images/profile.jpg"
									alt="profile"></a>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="top-right">
						<div class="header-menu">
							<div class="header-left">
								<!-- <button class="search-trigger">
									<i class="fa fa-search"></i>
								</button> -->
								<div class="form-inline">
									<form class="search-form">
										<input class="form-control mr-sm-2" type="text"
											placeholder="Search ..." aria-label="Search">
										<button class="search-close" type="submit">
											<i class="fa fa-close"></i>
										</button>
									</form>
								</div>
								<div class="dropdown for-notification">
									<button type="button"
										class="btn btn-outline-danger signbt mb-2" data-toggle="modal"
										data-target="#exampleModal" id="loginbtn">login</button>
								</div>
							</div>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</header>

        <div class="content">
           <h1 align="center">정보수정</h1>
        <div class="container"><!-- 좌우측의 공간 확보 -->

            <!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
            <!-- 본문 들어가는 부분 -->


            <form id="modifyInfo" class="form-horizontal" role="form" method="post" action="updateProc.member">
                <div class="form-group" id="divPassword">
                    <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="newpw" name="newpw" data-rule-required="true" placeholder="패스워드" maxlength="30"  pattern="[0-9a-zA-z]{8,}"required>
                    </div>
                </div>
                <div class="form-group" id="divPasswordCheck">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label"><div id="pwcheckbox"><div id="pwcheckbox1">패스워드 확인 </div><div id="result"></div></div></label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="newpw2" data-rule-required="true" placeholder="패스워드 확인" maxlength="30" name="newpw2"  required>
                    </div>
                </div>

                <div class="form-group" id="divEmail">
                    <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                    <div class="col-lg-10">
                        <input type="email" class="form-control" id="email" data-rule-required="true"maxlength="40" name="newemail" value="${user.email}">
                    </div>
                </div>
                <div class="form-group" id="divPhoneNumber">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11" name="phone" value="${user.phone}">
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="button" id="search" class="btn btn-default">주소 변경</button>
                    </div>
                </div>
                <div class="col-lg-10">
                        <input required type="text" class="form-control readonly" id="postcode" name="postcode" value="${user.postcode }" readonly >
                        <input required type="text" class="form-control readonly" id="Address1" name="address1" value="${user.address1 }"  readonly >
                        <input required type="text" class="form-control" id="Address2" name="address2" value="${user.address2 }" ><br>
                        <input type="button" class="mb-4" value="우편번호 찾기" id="search">
                    </div>
                
                
                
                
                
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button id="changeinfo" type="button" class="btn btn-default">정보수정</button>
                    </div>
                </div>
            </form>
		



        </div>
        <!-- 						진향이 로그인폼끝 -->
								<!-- 								진향이 마이페이지 폼 -->
								<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body1">
					<form>
						<div class="form-group m-0 p-0">
							<div class="card">
								<div class="card-header">
									<i class="fa fa-user"></i><strong class="card-title pl-2">
										My Page </strong>
										<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
								</div>
								<div class="card-body">
									<div class="mx-auto d-block">
										<img class="rounded-circle mx-auto d-block"
											src="images/profile.jpg" alt="profile image" width="130px">
										<h5 class="text-center mt-2 mb-1"><b>${user.id} 님</b></h5>
										<!-- <div class="location text-center">Lv. 일반회원</div> -->
									</div>
									<hr>
									<div class="card-text">
										<div>
											<b>이름 </b>
											<p>${user.name}</p>
										</div>
										<div>
											<b>생년월일</b>
											<p>${user.birth}</p>
										</div>
										<div>
											<b>이메일</b>
											<p>${user.email}</p>
										</div>
										<div>
											<b>핸드폰번호</b>
											<p>${user.phone}</p>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button id="deleteMembtn" type="button"
								class="btn btn-outline-info" data-dismiss="modal">회원 탈퇴</button>
							<button id="pointPagebtn" type="button"
								class="btn btn-outline-info" data-dismiss="modal">포인트
								충전</button>
							<button id="updatememberbtn" type="button"
								class="btn btn-outline-info" data-dismiss="modal">정보수정</button>
							<button type="button" class="btn btn-primary"  id="logoutbtn1">로그아웃</button>
									
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>



	<script>
	
	
	$("#logoutbtn1")
	.on(
			"click",
			function() {
	            if(${user.id == 'admin' }){
	            	location.href = "adminlogoutProc.member";	
	            }else{
	            	location.href = "logoutProc.member";	
	            }
	        	 
	         })

	
							$("#updatememberbtn")
									.on(
											"click",
											function() {
												location.href = "page?url=WEB-INF/ModifyMembers.jsp";
											})
							$("#deleteMembtn")
									.on(
											"click",
											function() {
												location.href = "page?url=WEB-INF/deleteMem.jsp";
											})
							$("#pointPagebtn").on("click", function() {
								location.href = "page?url=WEB-INF/pay.jsp";
							})
						</script>


						<!-- 진향이 마이페이지 폼끝 -->
        <div class="modal fade" id="exampleModal" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">L O G I
													N</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form action="loginProc.member" id="form" name="formname" method="post">
                        <div class="form-group">
                           <label for="exampleFormControlInput1">ID</label> <input
                              type="text" class="form-control" id="joinemail"
                              placeholder="ID를 입력하시오" required name="loginid" onkeypress="press(this.form)">
                        </div>
                        <div class="form-group">
                           <label for="exampleFormControlInput1">Password</label> <input
                              type="password" class="form-control" id="joinpassword"
                              placeholder="비밀번호 입력하시오" required name="loginpw" onkeypress="press(this.form)">
                        </div>
                        <div class=row><button type="button" class="btn btn-outline-info col-6 col-sm-2 mr-sm-2 ml-sm-5" type="button"
										id="findId">ID 찾기</button>
                           <button type="button" class="btn btn-outline-info col-6 col-sm-2 mr-sm-2 " type="button"
                              id="reinputpw">PW 찾기</button>
                           <button type="button" class="btn btn-outline-info col-6 col-sm-3 mr-sm-2" type="button"
                              id="joinMem">회원 가입</button>
                           <button type="submit" class="btn btn-outline-info col-6 col-sm-2 mr-sm-2" id="login">login</button></div>
                        <div class="modal-footer">
                        
                          
                        </div>
                     </form>
											</div>
										</div>
									</div>
								</div>

								<script>
								
								//엔터 입력시 로그인
						         function press(f){ if(f.keyCode == 13){  
						        	 formname.submit();  
						        	 } }
								
								
									$("#joinMem").on("click",function() {
									location.href = "page?url=WEB-INF/joinMem.jsp";
									})
									document.getElementById("login").onclick = function() {
									document.getElementById("form").submit();
									}
									// 									로그인 버튼과 회원가입 버튼의 script
								</script>
        </div><!-- .content -->
        
        <script>
		var count = 1;
        document.getElementById("newpw2").oninput = function() {
			var pw1 = document.getElementById("newpw").value;
			var pw2 = document.getElementById("newpw2").value;

			if (pw1 == pw2) {
				document.getElementById("result").innerHTML = "패스워드일치";
				result.style.color = "green";
				count = 2;
			}

			else {
				document.getElementById("result").innerHTML = "불일치";
				result.style.color = "#e66178";

			}
		}
        document.getElementById("changeinfo").onclick = function(){
        	if(count == 2){
    			document.getElementById("modifyInfo").submit();
    		}else if(count == 1){
    			alert("비밀번호가 일치하지 않습니다");
    		}
        };
        
		
					
	</script>
        
    <div class="clearfix"></div>

    <footer class="site-footer">
        <div class="footer-inner bg-white">
            <div class="row">
                <div class="col-sm-6">
                    Copyright &copy; 2018 Ela Admin
                </div>
                <div class="col-sm-6 text-right">
                    Designed by <a href="https://colorlib.com">Colorlib</a>
                </div>
            </div>
        </div>
    </footer>


    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>


 <!-- 5분(포인트 300)이 되면 경고창을 날림 / 포인트가 0이 되는 순간 강제 로그아웃되게 만드는 함수 --> 
  <c:choose> 
    <c:when test="${(user != null) && (user.id != 'admin')}">
      
       <script>
	
			function msg_time(){  
 		   
 		   $.ajax({  
 		    	 
 		         url: 'usertime.com',
 		         type: 'POST'
 		          
 		 }).done(function(point){
 			 		       	   	 			 	
 		      if (point == 300){      
 		    	  
 		         alert("선불시간이 5분 남았습니다.");
 		         
 		      }else if(point == 0){
 		    	  
 		    	  alert("포인트가 0이 되었으므로 자동 로그아웃됩니다.");
 		    	  location.href = "logoutProc.member";
 		    	  clearInterval(tid); 	
 		    	  
 		      }else if(point == -1){
 		    	  
 		    	 clearInterval(tid); 		
 		    	     	  
 		      }   
 		      		      
 		 });	   	     
 	   }	   			
 	 
 	   setTimeout(msg_time());//아래의 setInterval코드만 실행할 경우 1초의 딜레이가 생기는데 즉시 남은 시간을 보여주기 위해 만듬
 	   function TimerStart(){ tid=setInterval('msg_time()',1000) };
 	   TimerStart();   </script>    
  </c:when>  
</c:choose> 
 <script>
document.getElementById("search").onclick = searchAddress;
                function searchAddress() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                            var roadAddr = data.roadAddress; // 도로명 주소 변수
                            var extraRoadAddr = ''; // 참고 항목 변수

                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                extraRoadAddr += data.bname;
                            }
                            // 건물명이 있고, 공동주택일 경우 추가한다.
                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                            if(extraRoadAddr !== ''){
                                extraRoadAddr = ' (' + extraRoadAddr + ')';
                            }

                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                            document.getElementById('postcode').value = data.zonecode;
                            document.getElementById("Address1").value = roadAddr;
                        }
                    }).open();
                }
</script>



</body>
</html>
    