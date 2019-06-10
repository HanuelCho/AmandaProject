<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
.pointcard-body{
background-color: #bbe3e3;

}

</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
<div class="card my-card border-danger">
						<div class="pointcard-body">
						<c:choose>
						<c:when test="${user.point ne 0}">
									<h5 class="card-title"><img src="https://img.icons8.com/color/48/000000/human-head.png">
									${user.name}�Թݰ����ϴ�</h5>
									</c:when>
								
								
								
								
								
								<c:otherwise>
								<h5 class="card-title"><img src="https://img.icons8.com/color/48/000000/human-head.png">
									${user.name}�������� �ʿ��մϴ�</h5>
								</c:otherwise>	
							</c:choose>	
							
							
							<p class="card-text"></p>
									<h5><img src="https://img.icons8.com/color/30/000000/sales-performance.png">
									${user.name }���� ���� �ܿ�����Ʈ�� <span id="point">	</span> �Դϴ�.
									</h5>
									<h5><img src="https://img.icons8.com/color/30/000000/alarm-clock.png">
									
									${user.name }����
										���� ���� �ð��� <span id="timeout"></span> �Դϴ�.
									</h5><br>
								
									</div>
					</div>
					
					
					<c:choose>
		<c:when test="${user != null }">
			<script>
	
     function msg_time(){  
		   
    	  $.ajax({  	    	 
    		         url: 'usertime.com', //ComController�� �ִ� usertime���� �̵���
    		         type: 'POST'
    		          
    		 }).done(function(point){ //��Ʈ�ѷ����� 1�ʸ��� 1�� ���ҽ�Ű�� ����Ʈ���� ���÷� �޾ƿ´�
    		         		
    			 $("#point").html(point);
    		       	   
    		      m = (Math.floor(point/60)) + "�� "; 
    		      var msg = "<font color='red'>" + m +"</font>";
    		      
    		     $("#timeout").html(msg);
    		                       
    		      if (point == 300){    
    		    	  
    		         alert("���ҽð��� 5�� ���ҽ��ϴ�.");  
    		         
    		      }else if(point == 0){
    		    	  
    		    	  alert("����Ʈ�� 0�� �Ǿ����Ƿ� �ڵ� �α׾ƿ��˴ϴ�.");
    		    	  location.href = "logoutProc.member";
    		    	  clearInterval(tid);   
    		    	  
    		      }else if(point == -1){
    		    			
    		    	  $("#point").html(${user.point});
    		    	  $("#timeout").html("<font color='red'>" +  ((Math.floor(${user.point}/60)) + "�� ") +"</font>");
    		    	  clearInterval(tid);   
    		    	  	    	 
    		      }   	     	                   		      		      
    		 });   	     
    	   }
    	   		
    	  								
    	   setTimeout(msg_time());//�Ʒ��� setInterval�ڵ常 ������ ��� 1���� �����̰� ����µ� ��� ����Ʈ�� ���� �ð��� �����ֱ� ���� ����
        	   function TimerStart(){tid=setInterval('msg_time()',1000) };
    	   TimerStart();                          
    	  
    
      		
      		 </script>
      		
      		</c:when>
      		</c:choose>

					
</body>
</html>