<!DOCTYPE html>
<Html>
<head>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<script src="/layui/layui.js"></script>

<body>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function () {
        const layer = layui.layer
            , form = layui.form;

        layer.msg('Hello World');
    });
</script>
${name}
</body>
</Html>