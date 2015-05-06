<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
span {
	margin-right: 20px;
	color: black;
	font-style: bold;
	font-size: 15px;
	margin-left: 10px;
	height: 10px;
	margin-top: 0px;
	margin-bottom: 0px;
}

i {
	/* background-color:red; */
	color: #DB0000;
	margin: 0px;
}

.sidebar {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	z-index: 1000;
	display: block;
	padding: 0 20px;
	overflow: hidden;
	background-color: white;
	width: 230px;
	height: auto;
	font-size: 18px;
}

table tr {
	border-left: 4px solid #A566FF;
	border-top: 1px solid #BDBDBD;
	border-bottom: 1px solid #BDBDBD;
	border-right: 1px solid #BDBDBD;
}
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="./js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>메인화면2</title>
</head>
<body>
	<div class="col-md-2 column">
		<div class="sidebar">
			<h1 class="col-lg-11" style="margin-top: 30px;">
				<a href="list.do"><span>community</span></a>
			</h1>
			<div class="col-lg-11"
				style="margin-bottom: 5px; margin-top: 30px; background-color: #B70000; color: white; border-bottom: 2px solid grey;">
				CATEGORY</div>
			<div class="col-lg-11"
				style="background-color: #D5D5D5; height: 1px; margin-bottom: 5px;"></div>

			<div class="col-lg-11">
				<ul class="nav nav-sidebar nav-main">
					<li><a href="board.do"><i
							class="glyphicon glyphicon-pencil"></i><span>Free</span></a></li>
					<li><a><i class="glyphicon glyphicon-thumbs-up"></i><span>Homur</span></a></li>
					<li><a><i class="glyphicon glyphicon-camera"></i><span>Photo</span></a></li>
					<li><a><i class="glyphicon glyphicon-facetime-video"></i><span>Movie</span></a></li>
					<li><a><i class="glyphicon glyphicon-headphones"></i><span>Music</span></a></li>
					<li><a><i class="glyphicon glyphicon-sunglasses"></i><span>Fashion</span></a></li>
					<li><a><i class="glyphicon glyphicon-cutlery"></i><span>Food</span></a></li>
					<li><a><i class="glyphicon glyphicon-heart-empty"></i><span>Counsel</span></a></li>
				</ul>
			</div>
			<div class="col-lg-11"
				style="background-color: #D5D5D5; height: 1px; margin-bottom: 5px;"></div>
			<div class="col-lg-11">have a nice day</div>
			<div class="col-lg-11"
				style="background-color: #D5D5D5; height: 1px; margin-bottom: 5px;"></div>
			<%if(session.getAttribute("logininfo") != null) { %>
				<div>아이디:<%=session.getAttribute("id")%></div>
				<div><a href="member/profile.do?idx=5"><span>회원정보</span></a><a href="logout.do"><span>로그아웃</span></a></div>
			<%}else{ %>
			<a href="member/index.do"><div class="col-lg-5" style="font-size:12px; background-color: #0054FF; color: white">회원가입</div></a>
			<a href="member/login.do"><div class="col-lg-5" style="margin-left:2px;font-size:12px; background-color: #0054FF; color: white">로그인</div></a>
				<%}%>	
					
		</div>
	</div>

	<div class="col-md-10 column" style="background-color: #BDBDBD">
		<div class="col-lg-11"
			style="margin-bottom: 5px; margin-top: 20px; background-color: white">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">search</button>
				</span>
			</div>
		</div>
		`
		<div class="col-lg-11"
			style="background-color: #D5D5D5; height: 1px; margin-bottom: 5px;"></div>
		<div class="col-md-12 column">board View</div>
		<div class="col-md-4 column">
			<h4>Best</h4>
			<table class="table table-condensed">
				<tr style="">
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
			</table>
		</div>


		<div class="col-md-3 column">
			<h4>Update</h4>
			<table class="table table-condensed">
				<tr style="">
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
			</table>
		</div>
		<div class="col-md-3 column">
			<h4>Count</h4>
			<table class="table table-condensed">
				<tr style="">
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
				<tr>
					<td>sdf</td>
					<td>sdf</td>
					<td>sdf</td>
				</tr>
			</table>
		</div>
		<div class="col-lg-11"
			style="background-color: #D5D5D5; height: 1px; margin-bottom: 5px;"></div>
		<div class="col-md-10 column">
			<h4>Update Movie</h4>
			<div class="row clearfix">
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
			</div>
		</div>

		<div class="col-lg-11"
			style="background-color: #D5D5D5; height: 1px; margin-bottom: 5px;"></div>
		<div class="col-md-10 column">
			<h4>Update Photo</h4>
			<div class="row clearfix">
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
				<div class="col-md-2 column">
					<img alt="140x140" src="http://lorempixel.com/140/140/">
				</div>
			</div>
		</div>


	</div>
</body>
</html>