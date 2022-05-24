<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>도비마켓 로그인</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-light">


    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">welcome!</h1>
                                    </div>
                                    <!--아이디 입력칸입니다.  -->

                                    <form class="user" action="${pageContext.request.contextPath}/view/logincheck.jsp" method="post">

                                        <div class="form-group">
                                            <input type="text" name="Uid" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="ID를 입력해주세요">
                                        </div>
                                        <!--아이디 입력칸 끝  -->
                                        <!--비밀번호 입력칸입니다.  -->
                                        <div class="form-group">

                                            <input type="password" class="form-control form-control-user" name="Upw"
                                                id="exampleInputPassword" placeholder="비밀번호를 입력해주세요">
                                        </div>
                                        <!--비밀번호 입력칸 끝  -->
                                        
                                        <input type="submit" value="로그인" class="btn btn-primary btn-user btn-block">
                                           
                                       

                                        
                                        <hr>
                                        <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </a>
                                        <!--로그인 옵션 끝  -->
                                    </form>
                                    <hr>
                                    <div class="text-center">

                                        <a class="small" href="${pageContext.request.contextPath}/view/idfind.jsp">아이디 찾기</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="${pageContext.request.contextPath}/view/add.jsp">회원가입 하러가기!</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>

</body>
</html>