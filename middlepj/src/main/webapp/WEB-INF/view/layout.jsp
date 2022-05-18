<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
	<table>
		<!--menu navigation bar -->
		<tr>
			<td><tiles:insertAttribute name="nav" /></td>
		</tr>
		<!--Dobby marCAT main image  -->
		<tr>
			<td><tiles:insertAttribute name="header" /></td>
		</tr>
		
		<!--main contents -->
		
		<tr>
			<td><tiles:insertAttribute name="body" /></td>
		</tr>
		<!--Footer -->
		<tr>
			<td><tiles:insertAttribute name="footer" /></td>
		</tr>
		
	</table>
</body>
</html>



<%--     > --%>