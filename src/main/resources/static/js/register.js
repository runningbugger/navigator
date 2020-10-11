layui.use(['form'], function () {
    const form = layui.form;
    //监听提交
    form.on('submit(reg)', function (data) {
        let regInfo = JSON.stringify(data.field);
        $.ajax({
            url: '/sys-user/insert',
            type: 'get',
            dataType: 'json',
            contentType: "application/json",
            data: {regInfo: regInfo},
            success: function (data1) {
                //let obj = JSON.parse(data1);
                console.log(data1)
                alert(data1.userName)
                //top.location.href="http://baidu.com"
                close("no")
            }
        })
        return false;
    })
})


function close(status) {
    if (status == "yes") {
        window.parent.location.reload();//刷新父页面
        var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        parent.layer.close(index);
    }
    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
    parent.layer.close(index);
}