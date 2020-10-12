layui.use('layer', function () {
    const $ = layui.jquery, layer = layui.layer;
    $('#register').on('click', function () {
        //父页面弹出
        parent.layer.open({
            id: 'register',
            type: 2,
            title: '注册',
            shadeClose: true,
            //弹出框之外的地方是否可以点击
            //offset: '10%',
            area: ['400px', '300px'],
            content: '/sys-user/registerPage'
        });
    })
})

layui.use(['form'], function () {
    const form = layui.form;
    //监听提交
    form.on('submit(login)', function (data) {
        let loginInfo = JSON.stringify(data.field);
        $.ajax({
            url: '/sys-user/login',
            type: 'get',
            dataType: 'json',
            contentType: "application/json",
            data: {loginInfo: loginInfo},
            success: function (data1) {

                if (data1) {
                    //设置session

                    alert("登录成功");
                    top.location.href = "/nav-web-main/index"
                } else {
                    alert("登录失败");
                    layer.msg('注册失败');
                }
            }
        })
        return false;
    })
})