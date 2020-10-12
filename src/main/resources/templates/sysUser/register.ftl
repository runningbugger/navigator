<#--
  User: wangxf
  Date: 2020/10/8 0008
  Time: 19:46
 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<script src="/layui/layui.js"></script>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="/js/register.js"></script>
<body>
<form class="layui-form" id="userForm" style="margin-top: 30px">
    <div class="layui-form-item">
        <label class="layui-form-label required">用户名</label>
        <div class="layui-input-inline">
            <input type="tel" name="userName" lay-verify="title" autocomplete="off" placeholder="请输入用户名"
                   style="width: 70%"
                   lay-reqtext="用户名是必填项，岂能为空？" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">密码</label>
        <div class="layui-input-inline">
            <input type="password" name="password" lay-verify="required" lay-reqtext="密码是必填项，岂能为空？" placeholder="请输入"
                   style="width: 70%"
                   autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block" style="padding-left: 50px">
            <button type="submit" class="layui-btn layui-btn-radius layui-btn-warm" lay-submit="" lay-filter="reg">注册
            </button>
        </div>
    </div>
</form>
</body>
</html>
