<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>学生管理-StudentCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">学生管理系统 v2.1</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<%--<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>--%>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<%--<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>--%>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<%--<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>--%>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/student/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 学生管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 客户拜访
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 学生列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">学生管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/student/list.action">
					<div class="form-group">
						<label for="studentName">学生名称</label>
						<input type="text" class="form-control" id="studentName"
						                   value="${stuName }" name="stu_name" />
					</div>
					<div class="form-group">
						<label for="studentFaculty">所属学院</label>
						<select	class="form-control" id="studentFaculty" name="stu_faculty">
							<option value="">--请选择--</option>
							<c:forEach items="${faculty}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == stuFaculty}">selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="stuProfession">所属专业</label>
						<select	class="form-control" id="stuProfession"  name="stu_profession">
							<option value="">--请选择--</option>
							<c:forEach items="${profession}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == stuProfession}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="stuClass">所属班级</label>
						<select	class="form-control" id="stuClass" name="stu_class">
							<option value="">--请选择--</option>
							<c:forEach items="${studentClass}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == stuClass}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newStudentDialog" onclick="clearStudent()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">学生信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>学生名称</th>
								<th>学生所属学院</th>
								<th>学生所属专业</th>
								<th>学生所属班级</th>
								<th>学号</th>
								<th>手机</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.stu_id}</td>
									<td>${row.stu_name}</td>
									<td>${row.stu_faculty}</td>
									<td>${row.stu_profession}</td>
									<td>${row.stu_class}</td>
									<td>${row.stu_number}</td>
								    <td>${row.stu_mobile}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#studentEditDialog" onclick= "editStudent(${row.stu_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteStudent(${row.stu_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/student/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 学生列表查询部分  end-->
</div>
<!-- 创建学生模态框 -->
<div class="modal fade" id="newStudentDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建学生信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_student_form">
					<div class="form-group">
						<label for="new_studentName" class="col-sm-2 control-label">
						    学生名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_studentName" placeholder="学生名称" name="stu_name" />
						</div>
					</div>

					<div class="form-group">
						<label for="new_stu_age" class="col-sm-2 control-label">年龄</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_stu_age" placeholder="年龄" name="stu_age" />
						</div>
					</div>

					<div class="form-group">
						<label for="new_stu_gender" class="col-sm-2 control-label radio-inline">年龄</label>
						<div class="col-sm-10">
							<%--<label class="radio-inline">  </label>--%>
								<input type="radio"  name="stu_gender" id="new_stu_gender" value="女"> 女
							<label class="radio-inline">
								<input type="radio" name="stu_gender"  value="男"> 男
							</label>
						</div>
					</div>

					<div class="form-group">
						<label for="new_studentFaculty" style="float:left;padding:7px 15px 0 27px;">所属学院</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_studentFaculty" name="stu_faculty">
								<option value="">--请选择--</option>
								<c:forEach items="${faculty}" var="item">
									<option value="${item.dict_id}"
											<c:if test="${item.dict_id == stuFaculty}">selected</c:if>>
											${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_stuProfession" style="float:left;padding:7px 15px 0 27px;">所属专业</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_stuProfession"  name="stu_profession">
								<option value="">--请选择--</option>
								<c:forEach items="${profession}" var="item">
									<option value="${item.dict_id}"
											<c:if test="${item.dict_id == stuProfession}"> selected</c:if>>
											${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_stuClass" style="float:left;padding:7px 15px 0 27px;">所属班级</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_stuClass" name="stu_class">
								<option value="">--请选择--</option>
								<c:forEach items="${studentClass}" var="item">
									<option value="${item.dict_id}"
											<c:if test="${item.dict_id == stuClass}"> selected</c:if>>
											${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label for="new_stu_number" class="col-sm-2 control-label">学号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_stu_number" placeholder="学号" name="stu_number" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_stu_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_stu_mobile" placeholder="移动电话" name="stu_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_stu_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_stu_address" placeholder="联系地址" name="stu_address" />
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createStudent()">创建学生</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改学生模态框 -->
<div class="modal fade" id="studentEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel_edit">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel_edit">修改学生信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_student_form">
					<input type="hidden" id="edit_stu_id" name="stu_id"/>
					<div class="form-group">
						<label for="edit_studentName" class="col-sm-2 control-label">学生名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_studentName" placeholder="学生名称" name="stu_name" />
						</div>
					</div>


					<div class="form-group">
						<label for="edit_studentFaculty" style="float:left;padding:7px 15px 0 27px;">所属学院</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_studentFaculty" name="stu_faculty">
								<option value="">--请选择--</option>
								<c:forEach items="${faculty}" var="item">
									<option value="${item.dict_id}"
											<c:if test="${item.dict_id == stuFaculty}">selected</c:if>>
											${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_stuProfession" style="float:left;padding:7px 15px 0 27px;">所属专业</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_stuProfession"  name="stu_profession">
								<option value="">--请选择--</option>
								<c:forEach items="${profession}" var="item">
									<option value="${item.dict_id}"
											<c:if test="${item.dict_id == stuProfession}"> selected</c:if>>
											${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_stuClass" style="float:left;padding:7px 15px 0 27px;">所属班级</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_stuClass" name="stu_class">
								<option value="">--请选择--</option>
								<c:forEach items="${studentClass}" var="item">
									<option value="${item.dict_id}"
											<c:if test="${item.dict_id == stuClass}"> selected</c:if>>
											${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_stu_number" class="col-sm-2 control-label">学号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_stu_number" placeholder="学号" name="stu_number" />
						</div>
					</div>

					<div class="form-group">
						<label for="edit_stu_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_stu_mobile" placeholder="移动电话" name="stu_mobile" />
						</div>
					</div>

					<div class="form-group">
						<label for="edit_stu_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_stu_address" placeholder="联系地址" name="stu_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateStudent()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建学生窗口中的数据
	function clearStudent() {
	    $("#new_studentName").val("");
	    $("#new_stu_age").val("")
	    $("#new_studentFaculty").val("")
	    $("#new_stuProfession").val("")
	    $("#new_stuClass").val("")
	    $("#new_stu_number").val("");
	    $("#new_stu_mobile").val("");
	    $("#new_stu_address").val("");
	}
	// 创建学生
	function createStudent() {
	$.post("<%=basePath%>student/create.action",
	$("#new_student_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("客户创建成功！");
	            window.location.reload();
	        }else{
	            alert("客户创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的学生信息
	function editStudent(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>student/getStudentById.action",
	        data:{"id":id},
	        success:function(data) {
	            alert(data);
	            $("#edit_stu_id").val(data.stu_id);
	            $("#edit_studentName").val(data.stu_name);
	            $("#edit_studentFaculty").val(data.stu_faculty);
	            $("#edit_stuProfession").val(data.stu_profession);
	            $("#edit_stuClass").val(data.stu_class);
	            $("#edit_stu_number").val(data.stu_number);
	            $("#edit_stu_mobile").val(data.stu_mobile);
	            $("#edit_stu_address").val(data.stu_address);

	        }
	    });
	}
    // 执行修改学生操作
	function updateStudent() {
		$.post("<%=basePath%>student/update.action",$("#edit_student_form").serialize(),function(data){
			if(data =="OK"){
				alert("客户信息更新成功！");
				window.location.reload();
			}else{
				alert("客户信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除学生
	function deleteStudent(id) {
	    if(confirm('确实要删除该客户吗?')) {
	$.post("<%=basePath%>student/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>