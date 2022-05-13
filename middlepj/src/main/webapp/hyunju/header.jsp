<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dobby marCat</title>
</head>
<body>
	<header>
		<div id="header-first">
			<c:choose>
				<c:when test="'로그인헀을때'">
					<div id="header-main-menu">
						<c:if test="'admin'">
						</c:if>
						<a href="">마이페이지</a>
						<a href="">로그아웃</a>
					</div>
				</c:when>
				<c:otherwise>
					<div id="header-main-menu">
						<a href="">로그인</a>
						<a href="">회원가입</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div id="header-second">
			<a href="" id="header-to-home">홈</a>
			<div id="header-second-menu">
				<a href="" id="category-snack">간식</a>
				<a href="" id="category-toy">장난감</a>
				<a href="" id="category-goods">실내용품</a>
				<a href="" id="category-wash">목욕/미용</a>
			</div>			
		</div>
	</header>