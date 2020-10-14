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
<link href="../css/bootstrap.min.css" rel="stylesheet">

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
    <link href="../css/dashboard.css" rel="stylesheet">
  </head>
  <body>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">用户列表</h1>
        
      </div>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>id</th>
              <th>用户名</th>
              <th>用户状态</th>
              <th>查看用户</th>
              <th>编辑用户</th>
			  <th>删除用户</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1,001</td>
              <td>Lorem</td>
              <td>ipsum</td>
              <td><button class="btn btn-info btn-sm">查看用户</button></td>
              <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit">编辑用户</button></td>
			  <td><button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#del">删除用户</button></td>
            </tr>
            <tr>
              <td>1,002</td>
              <td>Lorem2</td>
              <td>ipsum2</td>
              <td><button class="btn btn-info btn-sm">查看用户</button></td>
              <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit">编辑用户</button></td>
			  <td><button class="btn btn-danger btn-sm">删除用户</button></td>
            </tr>
			  <tr>
              <td>1,003</td>
              <td>Lorem3</td>
              <td>ipsum3</td>
              <td><button class="btn btn-info btn-sm">查看用户</button></td>
              <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit">编辑用户</button></td>
			  <td><button class="btn btn-danger btn-sm">删除用户</button></td>
            </tr>
          </tbody>
        </table>
		<nav aria-label="...">
  <ul class="pagination">
    <li class="page-item disabled">
      <span class="page-link">上一页</span>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active" aria-current="page">
      <span class="page-link">
        2
     
      </span>
    </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">下一页</a>
    </li>
  </ul>

      </div>
    </main>
<!----------------------- 编辑用户------>
	<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">编辑用户</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">用户名:</label>
            <input type="text" class="form-control" required="required" id="recipient-name1">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">用户状态:</label>
            <input type="text" class="form-control" required="required" id="recipient-name2">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary">确认</button>
      </div>
    </div>
  </div>
</div>
<!----------------------- del------>
	<div class="modal fade" id="del" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">删除用户</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>是否确认删除这个用户？</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary">确认</button>
      </div>
    </div>
  </div>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>