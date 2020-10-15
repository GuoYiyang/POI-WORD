<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>煤矿作业规程智能化管理信息系统</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h3 align="center">国源矿业开发有限责任公司龙王沟煤矿</h3>
<h1 align="center">煤矿作业规程智能化管理信息系统</h1>
<br />
<form class="form-horizontal col-sm-10 col-sm-offset-1" action="<%=basePath%>/auth/exportWord/exportUserWord" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="inputText1" class="control-label">在模板任意位置插入文字演示</label>
        <input type="text" class="form-control" id="inputText1" name="inputText1" placeholder="请输入要替换的文字">
    </div>
    <div class="form-group">
        <label for="inputText2" class="control-label">在模板任意表格插入文字演示</label>
        <input type="text" class="form-control" id="inputText2" name="inputText2" placeholder="请输入要替换的文字">
    </div>
    <div class="form-group">
        <label for="inputImage" class="control-label">在模板任意位置插入图片演示</label>
        <input type="file" accept="image/jpeg" id="inputImage" name="inputImage">
    </div>
    <div class="form-group">
        <label for="inputFile" class="control-label">请选择Word文件</label>
        <input type="file" id="inputFile" name="inputFile">
    </div>
    <div class="form-group">
        <div class="col-sm-offset-5 col-sm-10">
            <button type="submit" class="btn btn-default">提交</button>
        </div>
    </div>
</form>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>