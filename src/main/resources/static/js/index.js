$(document).ready(function () {
    startTime();
})

function startTime() {
    let today = new Date()
    let h = today.getHours()
    let m = today.getMinutes()
    let s = today.getSeconds()
    // 当数字是小于10的就要在前面加0.看起来规范
    m = checkTime(m)
    document.getElementById('time').innerHTML = h + ":" + m
    setTimeout('startTime()', 1000)
}

function checkTime(i) {
    if (i < 10) {
        i = "0" + i
    }
    return i
}

layui.use('layer', function () {
    const $ = layui.jquery, layer = layui.layer;
    $('#login').on('click', function () {
        layer.open({
            zIndex: 3,
            type: 2,
            title: '登录',
            shadeClose: true,
            //弹出框之外的地方是否可以点击
            //offset: '10%',
            area: ['400px', '300px'],
            content: '/sys-user/loginPage'
        });
    })
})

const text = document.getElementById('text');
const search = document.getElementsByClassName('search')[0];
const oul = document.querySelector(".search ul");
const go = document.getElementById("go");

// 每次键盘抬起
text.onkeyup = () => {
    // 获取输入框里面的内容
    let val = text.value;
    // 如果输入框中不为空，就让联想列表出现，否则消失
    search.style.display = val != "" ? "block" : "none";
    // 每次松开键盘，都要通过script标签向百度接口获取数据
    // 所以每次松开键盘都要生成一个script标签，通过src属性来跨域请求
    const sc = document.createElement("script");
    sc.src = "https://sp0.baidu.com/5a1Fazu8AA54nxGko9WTAnF6hhy/su?wd=" + val + "&cb=lyl";
    document.body.appendChild(sc);
}


// data参数就是链接返回的json数据，data是一个对象,data.s就是我们找的联想词
function lyl(data) {
    // console.log(data);
    oul.innerHTML = "";//清空
    // 数组遍历forEach,里面有回调函数
    data.s.forEach(function (el) {
        // console.log(el);
        // 生成li
        var lis = document.createElement("li");
        // li链接到的地址<a href='https://www.baidu.com/s?wd=el
        lis.innerHTML = "<a href='https://www.baidu.com/s?wd=" + el + "'>" + el + "</a>";
        oul.appendChild(lis);
    })
}

