<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-Gitit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-Gitit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Dashboard Template · Bootstrap</title>


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
    <link href="css/dashboard.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">后台管理系统</a>
 
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">wangxin</a>
    </li>
  </ul>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <span><img src="icons/users.svg" width="18px" height="18px"></span>
              用户管理 <span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="users.html" target="mainC">
              <span data-feather="file"></span>
              用户列表
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link active" href="#">
              <span data-feather="home"></span>
              考勤管理 <span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="workings.html" target="mainC">
              <span data-feather="file"></span>
              值班列表
            </a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file"></span>
              考勤列表
            </a>
          </li>
		    <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file"></span>
              请假列表
            </a>
          </li>
		   <li class="nav-item">
            <a class="nav-link active" href="#">
              <span data-feather="home"></span>
              系统管理 <span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file"></span>
              修改密码
            </a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file"></span>
              注销用户
            </a>
          </li>
        </ul>
      </div>
    </nav>
	<iframe name="mainC" src="user/list" height="650px" width="1600px"
	/>

  </div>
</div>
</html>
