<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <Script>
      if (
   ${result}
      >= 6) {
         alert("상단 메뉴 수정이 완료되었습니다.");
         location.href = "MenuAdmin.admin";

      } else {
         alert("상단 메뉴 수정에 실패했습니다.");
         location.href = "MenuAdmin.admin";

      }
   </script>
</body>
</html>