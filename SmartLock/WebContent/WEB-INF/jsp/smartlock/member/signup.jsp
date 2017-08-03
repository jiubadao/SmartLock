<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Signup | Smart Lock</title>
	
	<link href="/html/css/bootstrap.min.css" rel="stylesheet">
	<link href="/html/css/modern-business.css" rel="stylesheet">
	<link href="/html/font-awesome/css/font-awesome.min.css" rel="stylesheet"	type="text/css">
	<link href="/html/css/login.css" rel="stylesheet">
</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Main.html">Smart Lock</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="Main.html">Home</a></li>
					<li><a href="About_us.html">About Us</a></li>
					<li><a href="Software.html">Software</a></li>
                    <li><a href="Download.html">Download</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="Log_in.html">로그인</a></li>
					<li><a href="Sign_up_select.html">회원가입</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">
		<!-- Service Panels -->
		<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">일반사용자 회원가입</h2>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form class="form-horizontal">
						<fieldset>
							<br>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-5 control-label" for="textinput">아이디</label>
								<div class="col-md-3">
									<div class="input-append">
										<input id="id" name="textinput" type="text"
											placeholder="아이디를 입력하세요." class="form-control with-btn input-md">
										<button id="check-id-btn" type="button" class="btn">중복확인</button>
										<input id="checked-id" style="display:none"/>
										<input id="is-ckeck-id" value="false" style="display:none"/>
									</div>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-5 control-label" for="textinput">비밀번호</label>
								<div class="col-md-3">
									<input id="pwd" name="textinput" type="password"
										placeholder="비밀번호를 입력하세요." class="form-control input-md">
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-5 control-label" for="textinput">비밀번호
									확인</label>
								<div class="col-md-3">
									<input id="check-pwd" name="textinput" type="password"
										placeholder="비밀번호를 재입력하세요." class="form-control input-md">
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-5 control-label" for="textinput">이름</label>
								<div class="col-md-3">
									<input id="name" name="textinput" type="text"
										placeholder="이름을 입력하세요." class="form-control input-md">
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-5 control-label" for="textinput">이메일</label>
								<div class="col-md-3">
									<input id="email" name="textinput" type="text"
										placeholder="이메일을 입력하세요." class="form-control input-md">
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-5 control-label" for="textinput">전화번호</label>
								<div class="col-md-3">
									<input id="phone" name="textinput" type="text"
										placeholder="전화번호를 입력해주세요." class="form-control input-md">
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">

								<label class="col-md-5 control-label" for="textinput">기업명</label>
								<div class="col-md-3">
									<div class="input-append">
										<input id="corp_name" type="text" class="form-control input-md" placeholder="기업명을 입력해주세요.">
										<button type="submit" class="btn">기업검색</button>
									</div>
								</div>
							</div>
							<br>
							<!-- Button -->
							<div class="form-group" align="center">
                                <button id="signup-btn" class="btn btn-default btn-md"
									style="height: 40px; width: 80px" type="button">회원가입</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<!-- /.row -->
		<hr>
		<footer class="text-center">
			<div class="row">
				<div class="col-lg-12">
					<p>
						서울특별시 서초구 양재대로2길 90, 아세아타워 TEL : 02-971-0321 FAX : 02-527-0321 <br>
						사업자등록번호 : 220-88-03210 캐드서브(주) 대표이사 : 김형준 <br> Copyright ⓒ
						Cadserv co., LTD.all rights reserved.
					</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- jQuery -->
	<script src="/html/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/html/js/bootstrap.min.js"></script>
	<script src="/html/js/member.js"></script>

</body>

</html>
