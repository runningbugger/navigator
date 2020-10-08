<!DOCTYPE html>
<Html>
<head>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" href="/css/index.css">
</head>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="/layui/layui.js"></script>
<body>

<div class="layui-container" style="margin-top: 10px">
    <div class="layui-row">
        <div class="layui-col-xs3">
            <div>&nbsp;</div>
        </div>
        <div class="layui-col-xs3">
            <div>&nbsp;</div>
        </div>
        <div class="layui-col-xs3">
            <div>&nbsp;</div>
        </div>
        <div class="layui-col-xs3">
            <div style="float: right"><a href="#" id="login">登录</a><i class="layui-icon layui-icon-username"></i></div>
        </div>
    </div>
    <div class="layui-row" style="margin-top: 50px">
        <div class="layui-col-xs6 layui-col-md12" style="text-align: center">
            <h1 id="time"></h1>
        </div>
        <div class="layui-col-xs6 layui-col-md12" style="margin-top: 30px">
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <input type="text" name="text" id="text" autocomplete="off" placeholder="请输入关键字"
                           class="layui-input">
                    <div class="search" style="position:absolute;z-index: 2">
                        <ul></ul>
                    </div>
                    <div class="layui-col-xs6 layui-col-md12" style="margin-top: 150px;align-items: center">
                        <ul class="web-list">
                            <li><a href="https://www.taobao.com/" class="link" target="_blank" rel="nofollow">淘宝</a>
                            </li>
                            <li><a href="https://www.jd.com/" class="link" target="_blank" rel="nofollow">京东</a></li>
                            <li><a href="http://123.sogou.com/shwz/yinhang.html" class="link" target="_blank"
                                   rel="nofollow">银行</a></li>
                            <li><a href="https://www.amap.com/" class="link" target="_blank" rel="nofollow">地图</a></li>
                            <li><a href="https://translate.google.cn/" class="link" target="_blank"
                                   rel="nofollow">翻译</a>
                            </li>
                            <li><a href="https://hao.qq.com/qita/youxiang.html" class="link" target="_blank"
                                   rel="nofollow">邮箱</a></li>
                            <li><a href="https://www.runoob.com/" class="link" target="_blank" rel="nofollow">菜鸟教程</a>
                            </li>
                            <li><a href="https://study.163.com/" class="link" target="_blank" rel="nofollow">云课堂</a>
                            </li>
                            <li><a href="https://www.icourse163.org/" class="link" target="_blank"
                                   rel="nofollow">MOOC</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/js/index.js"></script>

</body>
</Html>