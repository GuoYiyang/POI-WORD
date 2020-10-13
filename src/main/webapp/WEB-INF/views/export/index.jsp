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
    <title>POI-WORK</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1 align="center">POI-WORK</h1>
<form class="form-horizontal" action="<%=basePath%>/auth/exportWord/exportUserWord" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="inputTime" class="col-sm-5 control-label">请输入时间</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="inputTime" name="inputTime">
        </div>
        <label for="inputAddress" class="col-sm-5 control-label">请输入地址</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="inputAddress" name="inputAddress">
        </div>
        <label for="inputName" class="col-sm-5 control-label">请输入参会人员</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="inputName" name="inputName">
        </div>
    </div>
    <div class="form-group">
        <label for="inputFile" class="col-sm-5 control-label">请选择Word文件</label>
        <div class="col-sm-3">
            <input type="file" id="inputFile" name="inputFile">
        </div>
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