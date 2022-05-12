<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginTest</title>
</head>
<body>
${error }
  <h3>대충로그인창</h3>
  <form action="${pageContext.servletContext.contextPath }/memberSearch.do" method="get">
    아이디: <input type="text" name="Uid"><br>
    비밀번호우: <input type="text" name="Upw"><br>
    <input type="hidden" name="job" value="login">
    <input type="submit" value="Search">
  </form>
  <jsp:include page="${ request.getContextPath()}"></jsp:include>

</body>
</html>