<html>
<head>

    <link rel="stylesheet" href="css/user_center.css"/>
    <script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
    <title>个人中心 - 订单管理</title>
</head>
<body class="day " ng-controller="bodyCtrl"  day-or-night>
<section class="common-back" id="wrapBackground">


    <div id="main-box">
        <!--二维码-->
        <div class="qrCode-frame" ng-hide="qrCodeStatus">
            <img src="images/wx.png" alt="扫描二维码" />
            <em ng-click="qrCodeStatus=true">X</em>
        </div>

        <div ng-controller="colorAction">
            <div class="dayColor_two"></div>
            <div class="dayColor_one"></div>
            <div class="dayColor_three" ng-class="{dayColor_threeActive:threeActive}"></div>
        </div>
        <section>
            <div class="user-center-main-box common-width clearfix">
                <aside class="fl">
                    <ul>
                        <li>
                            <a href="javascript:funmemberscript('member_index')" rel="nofollow">账号管理</a>
                        </li>
                        <li class="active">
                            <a href="javascript:funmemberscript('member_order')" rel="nofollow">我的订单</a>
                        </li>
                        <li >
                            <a href="javascript:funmemberscript('member_collect')" rel="nofollow">我的收藏</a>
                        </li>
                        <li >
                            <a href="javascript:open()" rel="nofollow">地址管理</a>
                        </li>
                        <li >
                            <a href="javascript:funmemberscript('gifts')" rel="nofollow">氪星礼品站</a>
                        </li>
                    </ul>
                </aside>

                <div id="order_id"></div>

            </div>
        </section>

    </div>
</section>


</body>
</html>
<script>
    $(function () {
        $.ajax({
            url: "/path",
            type: "get",
            dataType: "html",
            data:{'path':"member_order"},
            success: function (data) {
                $("#order_id").html(data);
            }
        })
    });

    function open() {
        $.ajax({
            url: "/addressFeign/queryUserIdAddress",
            type: "get",
            data:{
                "userId":1
            },
            dataType: "html",
            success: function (data) {
                $("#order_id").html(data);
            }
        })
    }

</script>