<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>用户登录</title>

    <!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
	  
    </style>
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
    <form class="form-signin"  action="/log" method="post">
		<!-- 图片-->
  		<img class="mb-4" src="images/l1.png" alt="" width="120" height="100">
  		<input type="text" name = "username" class="form-control"  placeholder="用户名" required autofocus>
  		<br/>
  		<input type="password" name = "password" class="form-control" placeholder="密码" required>
  		<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
  		<p class="mt-5 mb-3 text-muted">&copy; 2020-2020</p>
	</form>
</body>
</html>
