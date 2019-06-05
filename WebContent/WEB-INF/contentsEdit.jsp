<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>게시판</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet"
	href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<style>
#footer {
	text-align: right;
	padding: 0px;
}

.myrow {
	margin-left: 0px;
	margin-right: 0px;
}

#wrapper {
	margin-top: 20px;
	padding: 0px;
}


#upload, #toList {
	margin: 0px;
}

#footer {
	text-align: right;
	padding: 0px;
}

footer {
	margin-top: 20px;
	padding-left: 15px;
	padding-right: 15px;
	padding-left: 15px;
}

header {
	padding-left: 15px;
	padding-right: 15px;
}

#text {
	height: 600px;
	margin: 0px;
}

#contents {
	margin: 0px;
	padding: 0px;
	width: 100%;
	height: 100%;
}

#title {
	margin-left: 10px;
	width: 70%;
}

#titleWrapper {
	margin-left: 10px;
	margin-top: 10px;
	margin-bottom: 10px;
	width: 100%;
}

#wrapper {
	margin-top: 50px;
	padding: 0px;
}

footer {
	padding-left: 15px;
	padding-right: 15px;
}

header {
	padding-left: 15px;
	padding-right: 15px;
}


#upload, #toList {
	margin: 0px;
}

#footer {
	text-align: right;
	padding: 0px;
}

#text {
	height: 600px;
}

#contents {
	margin: 0px;
	padding: 20px;
	width: 100%;
	height: 100%;
}

#title {
	margin-left: 10px;
	width: 80%;
}

#writer, #writeDate {
	margin-left: 10px;
	margin-top: 5px;
	margin-bottom: 5px;
	width: 80%;
}

.titleWrapper {
	margin-top: 10px;
	margin-bottom: 10px;
}

#titlerow {
	margin-top: 30px;
}

#writerrow, #daterow {
	margin-top: 8px;
}
</style>
</head>
<body>
	<!-- 왼쪽 네비 시작 -->
   <aside id="left-panel" class="left-panel">
      <nav class="navbar navbar-expand-sm navbar-default">
         <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
               <li class="active"><a href="page?url=WEB-INF/main.jsp"><i
                     class="menu-icon fa fa-laptop"></i>Home </a></li>
               <li class="menu-item-has-children dropdown"><a
                  href="page?url=WEB-INF/seat.jsp" onclick="send()"> <i
                     class="menu-icon fa fa-cogs"></i>잔여좌석
               </a></li>
               <li class="menu-item-has-children dropdown"><a
                  href="page?url=WEB-INF/manu.jsp"> <i
                     class="menu-icon fa fa-table"></i>메뉴
               </a></li>
               <li class="menu-item-has-children dropdown"><a
                  href="Board.board?currentPage=1"> <i
                     class="menu-icon fa fa-th"></i>고객의소리
               </a></li>
               <c:choose>
                  <c:when test="${user == null }">
                     <li id="charge" class="menu-item-has-children dropdown"><a
                        href="#"> <i class="menu-icon fa fa-tasks"></i>충전하기
                     </a></li>
                     <script>
                     $("#charge").on("click",function(){
                        alert("로그인 후 이용가능합니다.");   
                     })
                  </script>
                  </c:when>
                  <c:otherwise>
                     <li id="charge" class="menu-item-has-children dropdown"><a
                        href="page?url=WEB-INF/pay.jsp"> <i
                           class="menu-icon fa fa-tasks"></i>충전하기
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
               <a class="navbar-brand" href="./"><img src="images/logo.png"
                  alt="Logo"></a> <a class="navbar-brand hidden"
                  href="page?url=WEB-INF/main.jsp"><img src="images/logo2.png"
                  alt="Logo"></a> <a id="menuToggle" class="menutoggle"><i
                  class="fa fa-bars"></i></a>
            </div>
         </div>
         <c:choose>
            <c:when test="${user != null }">
               <div class="top-right">
                  <div class="header-menu">
                     <div class="header-left">
                        <button class="search-trigger">
                           <i class="fa fa-search"></i>
                        </button>
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
                           <button class="btn btn-secondary dropdown-toggle" type="button"
                              id="notification" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                              <i class="fa fa-bell"></i> <span class="count bg-danger">3</span>
                           </button>
                           <div class="dropdown-menu" aria-labelledby="notification">
                              <p class="red">You have 3 Notification</p>
                              <a class="dropdown-item media" href="#"> <i
                                 class="fa fa-check"></i>
                                 <p>Server #1 overloaded.</p>
                              </a> <a class="dropdown-item media" href="#"> <i
                                 class="fa fa-info"></i>
                                 <p>Server #2 overloaded.</p>
                              </a> <a class="dropdown-item media" href="#"> <i
                                 class="fa fa-warning"></i>
                                 <p>Server #3 overloaded.</p>
                              </a>
                           </div>
                        </div>

                        <div class="dropdown for-message">
                           <button class="btn btn-secondary dropdown-toggle" type="button"
                              id="message" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                              <i class="fa fa-envelope"></i> <span class="count bg-primary">4</span>
                           </button>
                           <div class="dropdown-menu" aria-labelledby="message">
                              <p class="red">You have 4 Mails</p>
                              <a class="dropdown-item media" href="#"> <span
                                 class="photo media-left"><img alt="avatar"
                                    src="images/avatar/1.jpg"></span>
                                 <div class="message media-body">
                                    <span class="name float-left">Jonathan Smith</span> <span
                                       class="time float-right">Just now</span>
                                    <p>Hello, this is an example msg</p>
                                 </div>
                              </a> <a class="dropdown-item media" href="#"> <span
                                 class="photo media-left"><img alt="avatar"
                                    src="images/avatar/2.jpg"></span>
                                 <div class="message media-body">
                                    <span class="name float-left">Jack Sanders</span> <span
                                       class="time float-right">5 minutes ago</span>
                                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                                 </div>
                              </a> <a class="dropdown-item media" href="#"> <span
                                 class="photo media-left"><img alt="avatar"
                                    src="images/avatar/3.jpg"></span>
                                 <div class="message media-body">
                                    <span class="name float-left">Cheryl Wheeler</span> <span
                                       class="time float-right">10 minutes ago</span>
                                    <p>Hello, this is an example msg</p>
                                 </div>
                              </a> <a class="dropdown-item media" href="#"> <span
                                 class="photo media-left"><img alt="avatar"
                                    src="images/avatar/4.jpg"></span>
                                 <div class="message media-body">
                                    <span class="name float-left">Rachel Santos</span> <span
                                       class="time float-right">15 minutes ago</span>
                                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                                 </div>
                              </a>
                           </div>
                        </div>
                     </div>
                     <!--  mypage 사람 사진-->
                     <div class="user-area  float-right">
                        <a href="#" class="active" data-toggle="modal"
                           aria-haspopup="true" aria-expanded="false"
                           data-target="#exampleModal1"> <img
                           class="user-avatar rounded-circle" src="images/admin.jpg"
                           alt="profile"></a>
                     </div>
                  </div>
               </div>
            </c:when>
            <c:otherwise>
               <div class="top-right">
                  <div class="header-menu">
                     <div class="header-left">
                        <button class="search-trigger">
                           <i class="fa fa-search"></i>
                        </button>
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
		<!-- /header -->

		<div class="content">
			<div class="animated fadeIn">
				<div class="card">

					<form action="BoardEdit.board" id="formEdit" method="post">
						<div class="card-header">
							<strong class="card-title"><header>
									<div class="row">
										<div class="col-lg-8 col-md-8 col-sm-8 col-8 titleWrapper"
											id="titlerow">
											제목 : <input type="text" id="title" value="${dto.title}"
												name="title" required>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-4 titleWrapper">
											<div class="row">
												<div class="col-lg-4 d-none d-lg-block" id="writerrow">글쓴이
													:</div>
												<div class="col-lg-8 col-md-12 col-sm-12 col-12">
													<input type="text" id="writer" readonly
														value="${dto.writer}" name="writer">
												</div>
											</div>
											<div class="row">
												<div class="col-lg-4 d-none d-lg-block" id="daterow">작성일시
													:</div>
												<div class="col-lg-8 col-md-12 col-sm-12 col-12">
													<input type="text" id="writeDate" readonly
														value="${dto.writeDate}"> <input type="text"
														name="no" id="no" readonly value="${no}">
												</div>
											</div>
										</div>
									</div>
								</header></strong>
						</div>
						<div class="card-body">
							<div class="container" id="wrapper">
								<main id="main">
								<div id="text">
									<textarea id="contents" name="contents" required>${dto.contents}</textarea>
									<input type="text" id="path" name="path">
								</div>
								</main>

								<footer>
									<div class="row">
										<div class=" logo col-lg-12 col-md-12 col-sm-12" id="footer">

											<input type="button" id="complete" value="수정완료"
												class="btn btn-secondary"> <input type="button"
												id="toList" value="목록으로" class="btn btn-secondary">
										</div>
									</div>
								</footer>
							</div>
						</div>
					</form>
				</div>
			</div>
			
			
			
						<!-- 					여기부터 진향이가 만든 로그인폼 -->
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
					<form action="loginProc.member" id="form" method="post">
						<div class="form-group">
							<label for="exampleFormControlInput1">ID</label> <input
								type="text" class="form-control" id="joinemail"
								placeholder="ID를 입력하시오" required name="loginid">
						</div>
						<div class="form-group">
							<label for="exampleFormControlInput1">Password</label> <input
								type="password" class="form-control" id="joinpassword"
								placeholder="비밀번호 입력하시오" required name="loginpw">
						</div>
						<div class="modal-footer">
						<button type="button" class="btn btn-primary" type="button"
										id="findId">아이디 찾기</button>
							<button type="button" class="btn btn-primary" type="button"
									id="reinputpw">비밀번호 찾기</button>
							<button type="button" class="btn btn-primary" type="button"
								id="joinMem">회원가입</button>
							<button type="button" class="btn btn-primary" id="login">login</button>
						
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
	$("#findId").on("click",function(){

 		location.href = "page?url=WEB-INF/modifyid.jsp";
 		})
 		
                       $("#reinputpw").on("click",function(){
                       location.href = "page?url=WEB-INF/modifypassword.jsp";
                       })
									$("#reinputpw").on("click",function(){
									location.href = "page?url=WEB-INF/modifypassword.jsp";
									})
									$("#joinMem").on("click",function() {
									location.href = "page?url=WEB-INF/joinMem.jsp";
									})
									document.getElementById("login").onclick = function() {
									document.getElementById("form").submit();
									}
									// 									로그인 버튼과 회원가입 버튼의 script
	</script>
								
	<!-- 						진향이 로그인폼끝 -->
	<!-- 								진향이 마이페이지 폼 -->
	<div class="modal fade" id="exampleModal1" tabindex="-1"
            role="dialog" aria-labelledby="exampleModalLabel1"
            aria-hidden="true">
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
                                       src="images/admin.jpg" alt="profile image" width="130px">
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
                                       <b>잔여포인트</b>
                                       <p>${user.point}</p>
                                    </div>
                                    <div>
                                       <b>주소</b>
                                       <p>
                                       ${user.address1 }</p>
                                       <p>${user.address2 }</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="modal-footer">
                           <button id="deleteMembtn" type="button"
                              class="btn btn-outline-info" data-dismiss="modal">회원
                              탈퇴</button>
                           <button id="pointPagebtn" type="button"
                              class="btn btn-outline-info" data-dismiss="modal">포인트
                              충전</button>
                           <button id="updatememberbtn" type="button"
                              class="btn btn-outline-info" data-dismiss="modal">정보수정</button>
                           <button type="button" class="btn btn-primary" id="logoutbtn1">로그아웃</button>

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
			
			
			
			
			
			
			
			
		</div>
		<div class="clearfix"></div>

		<footer class="site-footer">
			<div class="footer-inner bg-white">
				<div class="row">
					<div class="col-sm-6 text-left">Copyright &copy; Amanda</div>
					<div class="col-sm-6 text-right">Designed by Amanda</div>
				</div>
			</div>
		</footer>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="assets/js/main.js"></script>


	<script>
		document.getElementById("toList").onclick = function() {
			var result = confirm("작성중이던 내용을 잃을 수 있습니다. 정말 나가시겠습니까?");
			if (result) {
				location.href = "Board.board?currentPage=1";
			}
		}
		
		window.addEventListener("beforeunload", function(event) {
			event.preventDefault();
			$.ajax({
				url : "ImageDel.board",
				type : "POST"
			});
		});
		
		$(function() {
			$("#no").hide();
			$("#path").hide();
			$("#contents").summernote({
				placeholder : '글을 입력해주세요.',
				tabsize : 2,
				height : 100, // 기본 높이값
				minHeight : 545, // 최소 높이값(null은 제한 없음)
				maxHeight : 545, // 최대 높이값(null은 제한 없음)
				focus : true, // 페이지가 열릴때 포커스를 지정함
				lang : 'ko-KR',
				//onlmageUpload callback함수 -> 미설정시 data형태로 에디터 그대로 삽입
				callbacks : {
					onImageUpload : function(files, editor, welEditable) {
						for (var i = 0; i < files.length; i++) {
							sendFile(files[i], this);
						}
					}
				}
			});
			$("#path").hide();
			function sendFile(file, editor) {
				var data = new FormData();
				data.append('file', file);
				$.ajax({
					url : "ImageUpload.board",
					type : "POST",
					data : data,
					dataType : "json",
					cache : false,
					contentType : false,
					enctype : "multipart/form-data",
					processData : false,
					success : function(resp) {
						$(".note-editable").append("<img src='"+resp.url+"'>");
						$("#path").val(resp.path);
					},
					fail : function(resp) {
						console.log(resp.url);
					}
				});

			}

			$("#complete").on(
					"click",
					function() {
						$("#contents").val($(".note-editable").html());
						if ($("#contents").val() == "<p><br></p>") {
							alert("게시글을 작성해주세요.");
						} else if ($("#title").val() == "") {
							alert("제목을 작성해주세요.");
						} else if ($("#contents").val() != "<p><br></p>"
								&& $("#title").val() != "") {
							$.ajax({
								url : "Upload.board",
								type : "POST"
							});
							$("#formEdit").submit();
						}
					})

		});
	</script>

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
 		      }   
 		 });	   	     
 	   }	   			
 	 
 	   setTimeout(msg_time());//아래의 setInterval코드만 실행할 경우 1초의 딜레이가 생기는데 즉시 남은 시간을 보여주기 위해 만듬
 	   function TimerStart(){ tid=setInterval('msg_time()',1000) };
 	   TimerStart();	
			 
   </script>    
  </c:when>  
</c:choose> 

</body>
</html>
