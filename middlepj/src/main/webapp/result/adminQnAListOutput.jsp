<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="middle.vo.qnaVO"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>QnA게시글관리</h2>
	<c:choose>
		<c:when test="${empty list}">
			<h3>QnA정보없슴</h3>
		</c:when>
		<c:otherwise>
			<table border="1">
				<thead>
					<tr>
						<th>QnA번호</th>
						<th>물건코드</th>
						<th>QnA카테고리</th>
						<th>QnA글쓴이</th>
						<th>QnA글비번</th>
						<th>QnA제목</th>
						<th>QnA내용</th>
						<th>QnA날짜</th>
						
					</tr>

				</thead>
				<tbody>
					<c:forEach items="${list}" var="qna">
				<tr>
					<form action="qnaDelete.do" method="post">
						<td>${qna.qnaNo}</td>
						<td>${qna.productCode}</td>
						<td>${qna.qnaCategory}</td>
						<td>${qna.qnaWrite}</td>
						<td>${qna.qnaPw}</td>
						<td>${qna.qnaTitle}</td>
						<td>${qna.qnaContent}</td>
						<td>${qna.qnaDate}</td>
						<td><input type="submit" value="한건삭제">
								<input type="hidden" name=qnaNo value=${qna.qnaNo }>
						</td>
					</form>
				</tr>
				</c:forEach>
				</tbody>

				<tr>
				  <td>
					<input type="submit" value="수정">
					<input type="submit" value="삭제">
				  </td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>
	
	
	
	
	
	
	
	
	
	
	
	
	<div id="container">
    <div id="form">
      <label>QnA번호</label><input type="text" id="qnaNo"><br>
      <label>물건코드</label><input type="text" id="productCode"><br>
      <label>QnA카테고리</label><input type="text" id="qnaCategory"><br>
      <label>QnA글쓴이</label><input type="text" id="qnaWrite"><br>
      <label>QnA글비번</label><input type="text" id="qnaPw"><br>
      <label>QnA제목</label><input type="text" id="qnaTitle"><br>
      <label>QnA내용</label><input type="text" id="qnaContent"><br>
      <label>QnA날짜</label><input type="text" id="qnaDate"><br>
      
    </div>
    <div id="button">
      <button id="submit">저장</button>
      <button id="checkDel">선택삭제</button>
    </div>
    <div id="list">
      <table>
        <thead>
          <tr>
            <th><input type="checkbox" name="allCk" onclick="allCheck(this)"></th>
                    <th>QnA번호</th>
			  		<th>물건코드</th>
					<th>QnA카테고리</th>
					<th>QnA글쓴이</th>
					<th>QnA글비번</th>
					<th>QnA제목</th>
					<th>QnA내용</th>
					<th>QnA날짜</th>
          </tr>
        </thead>
        <tbody id="body">

        </tbody>
      </table>

    </div>
  </div>

  <script>
    // 저장, 선택삭제 버튼
    let addB = document.getElementById('submit');
    addB.addEventListener('click', addBook);
    let ckUser = document.getElementById('checkDel');
    ckUser.addEventListener('click', ckDelete);

    // 전체선택
    function checkSelectAll() {
      let allCheck = document.querySelector('input[name=allCk]'); // thead 체크박스
      let checkboxes = document.querySelectorAll('input[name=ck]'); // 전체 체크박스
      let checked = document.querySelectorAll('input[name=ck]:checked'); // 체크박스 체크

      if(checkboxes.length === checked.length) { // 전체 체크박스와 선택된 체크박스 갯수가 같을때
        allCheck.checked = true; // thead의 체크박스도 체크됨
      } else {
        allCheck.checked = false;
      }
    }
    function allCheck(e) {
      let checkboxes = document.getElementsByName('ck'); // 전체 체크박스
      checkboxes.forEach(function(checkbox) { // 전체 체크박스 각 요소
        checkbox.checked = e.checked; // e는 전체체크박스의 this (왜 앞뒤 순서를 바꾸면 안될까)
      })
    }
    //

    function init() { // 기존 책
      let book = [
        {bookCode:'P12301285', bookTitle:'이것이 자바다', bookWriter:'홍성문', bookCompany:'신흥출판사', bookPrice:'25,000원'},
        {bookCode:'P12301285', bookTitle:'이것이 자바다', bookWriter:'홍성문', bookCompany:'신흥출판사', bookPrice:'25,000원'}
      ]

      book.forEach(function(book) {
        document.getElementById('body').appendChild(makeTr(book));
      });
    }
    init();
    //

    function addBook() { //  목록 추가
      
    
	  let qnaDate, qnaNo, qnaPw, qnaCategory, productCode, 
	  qnaWrite, qnaTitle, qnaContent, id
	  
	  qnaDate = document.getElementById('qnaDate').value; 
	  qnaNo = document.getElementById('qnaNo').value;
	  qnaPw = document.getElementById('qnaPw').value;
	  qnaCategory = document.getElementById('qnaCategory').value;
	  productCode = document.getElementById('productCode').value; 
	  qnaWrite = document.getElementById('qnaWrite').value;
	  qnaTitle = document.getElementById('qnaTitle').value;
	  qnaContent = document.getElementById('qnaContent').value;
	  id = document.getElementById('id').value;
	 
      let book = {
    	qnaDate : qnaDate,
    	qnaNo : qnaNo,
    	qnaPw : qnaPw,
    	qnaCategory : qnaCategory,
    	productCode : productCode,
    	qnaWrite : qnaWrite,
    	qnaTitle : qnaTitle,
    	qnaContent : qnaContent,
    	id : id
      }
      document.getElementById('body').appendChild(makeTr(book));
      document.getElementById('bCode').value = '';
      document.getElementById('bTitle').value = '';
      document.getElementById('bWriter').value = '';
      document.getElementById('bCom').value = '';
      document.getElementById('bPrice').value = '';
      
    }
    //

    function ckDelete() { // 선택삭제
      let ckDel = document.querySelectorAll('tbody>tr');
      ckDel.forEach(function(tr) {
        let bookCheck = tr.firstElementChild.firstElementChild.checked;
        if (bookCheck == true) {
          tr.remove();
        }
      })
    }
    //

    function makeTr(obj) { // tr 생성
      let tr = document.createElement('tr');
      let td = document.createElement('td');
      let check = document.createElement('input');
      check.setAttribute('type', 'checkbox');
      check.setAttribute('name', 'ck');
      td.appendChild(check);
      tr.appendChild(td);

      for (let field in obj) {
        let td = document.createElement('td');
        td.innerHTML = obj[field];
        tr.append(td);
      }
      
      // 삭제버튼
      let td2 = document.createElement('td');
      let btn = document.createElement('button');
      btn.innerText = '삭제';
      btn.addEventListener('click', function() {
        tr.remove();
      })
      tr.append(td2);
      td2.appendChild(btn);
      tr.appendChild(td2);
      //

     return tr;
    }

    
  </script>

	
	
</body>
</html>