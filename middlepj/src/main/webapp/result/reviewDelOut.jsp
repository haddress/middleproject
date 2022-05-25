<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<script type="text/javascript">
	
		<c:choose>
			<c:when test="${result eq 1 }">
				alert('리뷰가 삭제되었습니다.');
				location.href = '${pageContext.request.contextPath}/review.do'
			</c:when>
			<c:otherwise>
				alert('리뷰삭제에 실패했습니다.');
				history.back();
			</c:otherwise>
		</c:choose>
	
	</script>
	
</body>
<script>
</script>
</html>