<!DOCTYPE html><!--/*技术支持，小庄602842076     验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/-->

<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta property="wb:webmaster" content="239d3d1dbdde1b2c" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css"/>

    <link rel="stylesheet" href="css/login.css"/>

    <!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="css/frontPage-ie8-fix.css" /><![endif]-->
    <!--[if lte IE 10]><script>document.createElement('footer');document.createElement('header');document.createElement('nav');document.createElement('section');document.createElement('article');</script><![endif]-->
    <!--[if lte IE 7]><script>window.onload=function(){location.href="/ie6warning/"}</script><![endif]-->
    <title>登录</title>
    <script type="text/javascript">

        (function(document, screen) {
            if (screen.width < 760) {
                document.location.href="/mobile/";
            }
        }(document, screen));
    </script>
</head>
<body>

<header id="header" class="">
    <div class="common-width">

        <section class="clearfix">
            <h1 class="logo" title="外卖超人">
                <a href="index.html"></a>
            </h1>
            <span class="page-name"> | 登录</span>
        </section>


    </div>
</header>

<section class="main">
    <div class="common-width">

        <div class="main-inner">

            <div class="log-box" id="loginPageBox">
                <div class="form-group w275">
                    <label for="lPhone">手机号码</label>
                    <span class="fs12 fr">没有注册 ？ <a href="/account/register/" class="yo">立即注册</a></span>
                    <input id="lPhone" maxlength="11" type="text" class="form-text" placeholder="输入您的手机号码"/></label><span id="userPhone"></span>
                </div>
                <div class="form-error-message"></div>
                <div class="form-group w275">
                    <label  for="lPass" >登录密码</label>
                    <input id="lPass" maxlength="10" type="password" class="form-text" onpaste="return false" placeholder="请输入登录密码"/></label><span id="userPass"></span>
                </div>
                <div class="form-error-message"></div>

                <div >

                    <label  for="lPass">验证码</label>
                    <p>
                    <input id="lCaptcha" type="text" class="form-text" placeholder="请输入验证码"/>
                    </p>
                    <span><img  src="${request.contextPath}/userFeign/getImg" height="40px" onclick="this.src= change()" /></span>
                </div>
                <div>
                    <#--<input class="form-btn" onclick="loginUser()" id="loginPageBtn" value="登录">-->
                    <button class="form-btn" id="loginPageBtn" onclick="loginUser()">登录</button>
                </div>
                <div class="code-box clearfix">
                    <img src="images/mobile_url_qr.png" />
                    <div class="font-box">
                        <div class="font">
                            打开手机wap页<span>扫一扫，美味随身订！</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</section>
<footer id="footer">
    <div class="footer-first gray">
        <div class="company-info clearfix fs14 gray">
            <a href="/about_us/" target="_blank"  rel="nofollow">关于我们</a>
            <a href="/help/" target="_blank"  rel="nofollow">帮助中心</a>
            <a href="/terms-and-conditions/" target="_blank"  rel="nofollow">法律声明</a>
            <a href="/jobs/" target="_blank"  rel="nofollow">人才招聘</a>
            <a href="/contact/" class="last" target="_blank"  rel="nofollow">联系我们</a>
            <a href="/restaurant/list/shanghai/1/" class="last" target="_blank" style="display:none">上海餐厅导航</a>
        </div>
    </div>
    <div class="footer-last">
        <a target="_blank" class="foot-logo-1 base-logo" href="index.html"></a>
        <div class="tc fs14 light-gray mb10">
            ©2014 waimaichaoren.com All Rights Reserved - 沪ICP备11019908号
        </div>
    </div>
</footer>


<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

<script>
    var userVaildate = '/ajax/user_login/';
</script>
<script type="text/javascript" src="js/loginVaildate.js"></script>

<!-- Baidu Analytics -->

<!-- End Baidu Tracking Code -->

<!-- Baidu Remarketing code -->
<script type="text/javascript">
    <!--
    (function (d) {
        window.bd_cpro_rtid="rHDzrHT";
        var s = d.createElement("script");s.type = "text/javascript";s.async = true;s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
        var s0 = d.getElementsByTagName("script")[0];s0.parentNode.insertBefore(s, s0);
    })(document);
    //-->
</script>
<!-- End Baidu Remarketing code -->

<!-- Google Analytics Code -->
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-33138478-1', 'waimaichaoren.com');
    ga('send', 'pageview');
    ga('require', 'ecommerce', 'ecommerce.js');
</script>
<!-- End Google Analytics Code -->
<script>
    function change(){
        return '${request.contextPath}/userFeign/getImg?aaa'+ Math.random();
    }
    //登录
    function loginUser(){
        var userPhone = $("#lPhone").val();
        var userPass = $("#lPass").val();
        var code = $("#lCaptcha").val();
        //正则验证手机号
        var phone = /^1\d{10}$/
        var bool = phone.test(userPhone);
        if(!bool){
            $("#phoneSpan").html("<font color='red'>手机号格式错误</font>");
            return;
        }
        //判断手机号不能为空
        if(userPhone == ''){
            $("#phoneSpan").html("<font color='red'>手机号不能为空</font>")
        }

        //判断密码不能为空  和  不能小于6位数
        var pass = /^[A-Za-z0-9]{6,}$/
        var passNull = pass.test(userPass);
        if(!passNull){
            $("#passSpan").html("<font color='red'>密码不能小于6位</font>");
            return;
        }

        if(userPass == null){
            $("#passSpan").html("<font color='red'>密码不能为空</font>");
            return;
        }

        //如果上面都没问题  去后台验证手机号和密码是否都一致
        $.ajax({
            url:'/userFeign/loginUser',
            type:'get',
            data:{
                "userPhone":userPhone,
                "userPass":userPass,
                "code":code
            },
            dataType:'json',
            success:function(data){
                if(data.code==500){
                    $("#login").html(data.msg);
                }else{
                    alert("登录成功");
                    location.href="/path?path="+"index";
                }
            }
        })
    }

</script>
</body>
</html>