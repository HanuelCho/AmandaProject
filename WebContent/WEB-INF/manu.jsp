<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>메뉴</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<!--title아이콘 변경하는 link  -->
<link rel="shortcut icon" href="images/title.png">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">

<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/style.css">
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<link
   href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css"
   rel="stylesheet">
<link
   href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css"
   rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

<!-- 아이콘 link -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<style>
#cardHeader {
   text-align: center;
}

#todaysMenu {
	text-shadow: 4px 2px 2px gray;
	font-family:cursive;
	font-weight:600;
	color: white;
	padding-left: 20px;
	padding-right: 20px;
	border-radius: 10px;
}

#caroWrapper {
   display: flex;
   justify-content: center;
   padding-top: 30px;
}

#remember {
   width: 35%;
   height: 100%;
   margin: 0px;
}

.modal-footer {
   box-sizing: border-box;
}

.modal-body1 {
   padding: 1px;
}

.card-header {
   color: gray;
   background-color: #bbe3e3;
}

.card-text {
   text-align: left;
}
.myspan {
   text-align: center;
}
.myImg{
	width:100%;
}
</style>
</head>

<body>
   <!-- 왼쪽 네비 시작 -->
  <!-- 왼쪽 네비 시작 -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="menu-item-has-children"><a href="page?url=WEB-INF/main.jsp"><i
							class="menu-icon fa fa-home fa-lg"></i>Home </a></li>
					<li class="menu-item-has-children "><a
						href="page?url=WEB-INF/seat.jsp" onclick="send()"> <i
							class="menu-icon fa fa-desktop fa-lg"></i>잔여좌석
					</a></li>

					<li class="active"><a
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
									<i class="menu-icon fa fa-usd fa-lg "></i>충전하기
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
									class="menu-icon fa fa-usd fa-lg "></i>충전하기
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
		<header id="header" class="header">
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
						<div class="header-menu pt-3">
					
								
								<h5><img src="https://img.icons8.com/color/30/000000/sales-performance.png">
									 <span id="point"  class="pr-3"></span>
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
									alt="profile" height="80%"></a>
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
      <!--       상단 네비 끝 -->
      <!-- 오늘의 메뉴 시작-->
      <div id="caroWrapper">
         <div id="caroInner" class="col-lg-6 col-md-8 col-sm-12">
            <div class="card">
               <div class="card-header" id="cardHeader">
                  <strong class="card-title mb-3"><h1>
                        <span id="todaysMenu">${top }</span>
                     </h1></strong>

               </div>
               <div class="card-body">
                  <div class="mx-auto d-block">
                     <div id="myCarousel" class="carousel slide " data-ride="carousel"
                        data-interval="4000">
                        <ol class="carousel-indicators">
                           <li data-target="#carouselExampleIndicators" data-slide-to="0"
                              class="active"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                           <div class="carousel-item active">
                              <img src="${food1 }" class="d-block w-200 myImg"
                                 alt="이미지를 찾을 수 없습니다.">
                              <div class="carousel-caption d-none d-md-block">
                                 <h5>${food1Desc }</h5>
                              </div>
                           </div>
                           <div class="carousel-item">
                              <img src="${food2 }" class="d-block w-200 myImg"
                                 alt="이미지를 찾을 수 없습니다.">
                              <div class="carousel-caption d-none d-md-block">
                                 <h5>${food2Desc }</h5>
                              </div>
                           </div>
                           <div class="carousel-item">
                              <img src="${food3 }" class="d-block w-200 myImg"
                                 alt="이미지를 찾을 수 없습니다.">
                              <div class="carousel-caption d-none d-md-block">
                                 <h5>${food3Desc }</h5>
                              </div>
                           </div>
                        </div>
                        <a class="carousel-control-prev" href="#myCarousel"
                           role="button" data-slide="prev"> <span
                           class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                           class="sr-only">Previous</span>
                        </a> <a class="carousel-control-next" href="#myCarousel"
                           role="button" data-slide="next"> <span
                           class="carousel-control-next-icon" aria-hidden="true"></span> <span
                           class="sr-only">Next</span>
                        </a>
                     </div>
                  </div>

                  <h5 class="text-sm-center mt-2 mb-1">${bot1 }</h5>
                  <div class="location text-sm-center">${bot2 }</div>
               </div>
               <hr>
            </div>
         </div>
      </div>

      <!-- Content 시작 -->
      <div class="content">
         <div class="animated fadeIn">
            <div class="row">
               <c:forEach var="dto" items="${list}">
                  <div class="col-md-4 col-sm-6">
                     <div class="card">
                        <div class="card-header headerWrapper">
                           <div class="cardTitle">
                              <strong class="card-title mb-3">${dto.menuName}</strong>
                           </div>
                        </div>
                        <div class="card-body">
                           <div class="mx-auto d-block myspan">
                              <div>
                                 <img data-toggle="modal" data-target="#menuModal${dto.menu_seq }" src="${dto.imgPath}" alt="">
                              </div>
                              <h5 class="text-sm-center mt-2 mb-1">${dto.menuDesc}</h5>
                              <span>${dto.menuPrice}</span>원 <input type="hidden"
                                 value="${dto.menu_seq}">
                           </div>  
                           <hr>
                        </div>
                     </div>
                  </div>
                 
                  
                 
                 
           <div class="modal fade" id="menuModal${dto.menu_seq }" tabindex="-1"
            role="dialog" aria-labelledby="exampleModalLabel1"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
               <div class="modal-content">
                  <div class="modal-body1">
                   
                        <div class="form-group m-0 p-0">
                           <div class="card">
                              <div class="card-header">
                              <strong class="card-title pl-2">
                                    	지금까지 이런메뉴는 없었다!! </strong>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                 </button>
                              </div>
                              <div class="card-body">
                                 <div class="mx-auto d-block">
                                    <img class="rounded-circle mx-auto d-block"
                                       src="${dto.imgPath}" alt="profile image" width="130px">
                                    <h5 class="text-center mt-2 mb-1">
                                       <b></b>
                                    </h5>
                                    <!-- <div class="location text-center">Lv. 일반회원</div> -->
                                 </div>
                                 <hr>
                                 <div class="card-text">
                                    <div>
                                       <b>이름 </b>
                                       <p>${dto.menuName}</p>
                                    </div>
                                     <div>
                                       <b>설명</b>
                                       <p>${dto.menuDesc}</p>
                                    </div>
                                    <div>
                                       <b>가격</b>
                                       <p>${dto.menuPrice}</p>
                                    </div>
                                    <div class="modal-footer">
                             <c:if test="${user != null }">
                             <button class = "btn btn-info" id="menu${dto.menu_seq }">결제하기 </button> 
                             </c:if>
                          	 <button type="button" class="btn btn-secondary"
                              data-dismiss="modal">닫기</button>
                        </div>
                                   
                                   
                                 
                                 </div>
                              </div>
                           </div>
                        </div>
                   </div>
               </div>
            </div>
         </div>
                  
                  <script>
                  
                  $(window).on("resize",function(){
      				if($(window).width() >= 752){
      					$("#left-panel").css("display","block");
      				}				
      			})
                  
                  
                  var id = "${user.id }";
                  var paid_amount;
                  var name;
                  var result;
                  $("#menu${dto.menu_seq }").on("click",function(){

                		IMP.init('imp96545220'); 
                		IMP.request_pay({
                		    pg : 'inicis', // version 1.1.0부터 지원.
                		    pay_method : 'card',
                		    merchant_uid : 'merchant_' + new Date().getTime(),
                		    name : '${dto.menuName}',
                		    amount : '${dto.menuPrice}',
                		    buyer_email : 'iamport@siot.do',
                		    buyer_name : '구매자이름',
                		    buyer_tel : '010-1234-5678',
                		    buyer_addr : '서울특별시 강남구 삼성동',
                		    buyer_postcode : '123-456',
                		    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
                		}, function(rsp) {
                		    if ( rsp.success ) {
                		        var msg = '결제가 완료되었습니다.';
                		        paid_amount = rsp.paid_amount;
                		        name = rsp.name;
                		        result = "결제 완료";
                		        var webSocket = new WebSocket('ws://192.168.60.20/broadcasting');
              					webSocket.onopen = function(){
              					webSocket.send("${user.id}:"+"${user.id}님이"+name+"을 주문하였습니다:admin"); 
              					} ;
                		        location.href = "menu.pay?id="+id+"&amount="+paid_amount+"&name="+name;
                  		        /* 관리자에게 메시지 보내기  */
                		    } else {
                		        var msg = '결제에 실패하였습니다.';
                		        msg += '에러내용 : ' + rsp.error_msg;
                		    }
                		    alert(msg);
                		   
                  		   
                		});
                		})
 			             		
                		
   		
                		
                		
                	
                  </script>
              </c:forEach>
            </div>
         </div>
         <!-- .row -->
      </div>
      <!--                여기부터 진향이가 만든 로그인폼 -->
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">L O G I N</h5>
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
      
      
      $("#findId").on("click",function(){

  		location.href = "page?url=WEB-INF/modifyid.jsp";
  		})
  		
         $("#reinputpw").on("click", function() {
            location.href = "page?url=WEB-INF/modifypassword.jsp";
         })
         $("#joinMem").on("click", function() {
            location.href = "page?url=WEB-INF/joinMem.jsp";
         })
         document.getElementById("login").onclick = function() {
            document.getElementById("form").submit();
         }
         //                            로그인 버튼과 회원가입 버튼의 script
      </script>

      <!--                   진향이 로그인폼끝 -->
      <!--                         진향이 마이페이지 폼 -->
      <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel1" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-body1">
                  <form class="modal-body1">
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
                                 <h5 class="text-center mt-2 mb-1">
                                    <b>${user.id} 님</b>
                                 </h5>
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
                                 <div>
                                    <b>주소</b>
                                    <p>${user.address1 }</p>
                                    <p>${user.address2 }</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row p-3">
                          <c:if test="${user.id != 'admin' }">
                           <button id="deleteMembtn" type="button"
                              class="btn btn-outline-info col-6 col-sm-2 mr-sm-2 ml-sm-4 p-0" data-dismiss="modal">회원
                           	   탈퇴</button>
                           <button id="pointPagebtn col-6 " type="button"
                              class="btn btn-outline-info col-6 col-sm-3 mr-sm-2" data-dismiss="modal">포인트
                              	충전</button>
             	           <button id="updatememberbtn col-6" type="button"
                              class="btn btn-outline-info col-6 col-sm-3 mr-sm-2" data-dismiss="modal">정보수정</button>
                            </c:if>
                        <button type="button" class="btn btn-outline-info col-6 col-sm-2 mr-sm-2 p-0" id="logoutbtn1">로그아웃</button>

                     </div>
                  </form>

               </div>
            </div>
         </div>
      </div>



      <script>
      
      
      $("#logoutbtn1").on("click",function() {
                if(${user.id == 'admin' }){
                	location.href = "adminlogoutProc.member";	
                }else{
                	location.href = "logoutProc.member";	
                }
            	 
             });


         $("#updatememberbtn").on("click", function() {
            location.href = "page?url=WEB-INF/ModifyMembers.jsp";
         })
         $("#deleteMembtn").on("click", function() {
            location.href = "page?url=WEB-INF/deleteMem.jsp";
         })
         $("#pointPagebtn").on("click", function() {
            location.href = "page?url=WEB-INF/pay.jsp";
         })
      </script>
      <!-- 진향이 마이페이지 폼끝 -->

      <!-- 컨텐츠 끝 -->

      <div class="clearfix"></div>
      <!-- Footer -->
      <footer class="site-footer">
         <div class="footer-inner bg-white">
            <div class="row">
               <div class="col-sm-6">2019년 PC방의 새로운 혁신을 일으키다</div>
               <div class="col-sm-6 text-right">
                  Designed by <a href="">Amanda</a>
               </div>
            </div>
         </div>
      </footer>

      <script
         src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
      <script
         src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
      <script
         src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
      <script
         src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
      <script src="assets/js/main.js"></script>
      <script>
         $("#updatememberbtn").on("click", function() {
            location.href = "page?url=WEB-INF/ModifyMembers.jsp";
         })
         $("#deleteMembtn").on("click", function() {
            location.href = "page?url=WEB-INF/deleteMem.jsp";
         })
         $("#pointPagebtn").on("click", function() {
            location.href = "page?url=WEB-INF/pay.jsp";
         })
      </script>
      
      
       <!--메시지  -->
     	
 		<script>
		//msg보내는 소켓 및 버튼
		
										//msg보내는 소켓 및 버튼
										 var webSocket = new WebSocket('ws://192.168.60.20/broadcasting');
									    webSocket.onerror = function(event) {
     									 
   											 };
  										 webSocket.onmessage = function(event) {
   										   onMessage(event)
  										  };
  									 
  									 
  										if("${user.id}"!="admin"){
  										  function onMessage(event) {
    										  var msg = event.data.split(":");
       										  var who = msg[0]; //admin
       											var contents = msg[1];
       											 var who2=msg[2]; //clinet이름      											    							
     								 if("${user.id}"==who2&&who=="admin") 
     								{
    								window.open("replytoclient.message?who="+who2+"&&content="+contents,"",
									"location=no, directories=no,width=500px,height=300px");
     										 
     								 }
     								 else if("admin"==who&&who2=="all") 
     								 {
     									 console.log(who);
     									 console.log(who2);
     									window.open("all.message?content="+contents,"",
    									"location=no, directories=no,width=500px,height=300px");
     									  }
     							 }
     							
  								}	
  								//메시지 끝
  								
									$("#msg")
									.on(
											"click",
											function() {
												
												window.open("page?url=WEB-INF/newmessage.jsp","","width=500px,height=300px");
											
											})
  								</script>
  
    
   <!-- 5분(포인트 300)이 되면 경고창을 날림 / 포인트가 0이 되는 순간 강제 로그아웃되게 만드는 함수 --> 
  <c:choose>
		<c:when test="${user != null }">
			<script>
	
     function msg_time(){  
		   
    	  $.ajax({  	    	 
    		         url: 'usertime.com', //ComController에 있는 usertime으로 이동함
    		         type: 'POST'
    		          
    		 }).done(function(point){ //컨트롤러에서 1초마다 1씩 감소시키는 포인트값을 수시로 받아온다
    		         		
    			 $("#point").html(point);
    		       	   
    		      m = (Math.floor(point/60)) + "분 "; 
    		      var msg = "<font color='red'>" + m +"</font>";
    		      
    		     $("#timeout").html(msg);
    		                       
    		      if (point == 300){    
    		    	  
    		         alert("선불시간이 5분 남았습니다.");  
    		         
    		      }else if(point == 0){
    		    	  
    		    	  alert("포인트가 0이 되었으므로 자동 로그아웃됩니다.");
    		    	  location.href = "logoutProc.member";
    		    	  clearInterval(tid);   
    		    	  
    		      }else if(point == -1){
    		    	     		    	 
    		    	  $("#point").html(${user.point}); 		    	  
    		    	  $("#timeout").html( "<font color='red'>" + (Math.floor(${user.point}/60))+ "분 " +"</font>");      		    	  		    	 	  
    		    	  clearInterval(tid);     
    		    	  
    		      }   	     	                   		      		      
    		 });   	     
    	   }
    	   		
    	  								
    	   setTimeout(msg_time());//아래의 setInterval코드만 실행할 경우 1초의 딜레이가 생기는데 즉시 포인트와 남은 시간을 보여주기 위해 만듬
    	   
    	   function TimerStart(){tid=setInterval('msg_time()',1000) };
    	   TimerStart();                          
    	  
    	   var webSocket = new WebSocket('ws://192.168.60.20/websocketendpoint');
      		webSocket.onopen = function(){
      			webSocket.send("hi"); 
      		} ;
   		
   </script>
		</c:when>
	</c:choose>
</body>
</html>