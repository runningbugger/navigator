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
            area: ['23%', '20%'],
            content: '/sys-user/registerPage'
        });
    })
})