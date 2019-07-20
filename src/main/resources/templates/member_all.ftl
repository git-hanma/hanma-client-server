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
                            <a href="javascript:query()" rel="nofollow">我的订单</a>
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
                    <ul id="display" style="visibility: hidden">
                        <li >
                            <a href="javascript:leimu()" rel="nofollow">类目管理</a>
                        </li>
                        <li >
                            <a href="javascript:shangpin()" rel="nofollow">商品管理</a>
                        </li>
                        <li >
                            <a href="javascript:funmemberscript('member_addr')" rel="nofollow">我的配送单</a>
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
    /*初始化订单*/
    query();
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


    function query() {
        $.ajax({
            url: "/orderFeign/getUserIdOrder",
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
    //显示商家管理权限
    $(function () {
        var id=1;
        $.ajax({
            url: "userFeign/getUserIdMerchantId",
            type: "get",
            dataType: "json",
            data:{'userId':id},
            success: function (data) {
                alert(data)
                if(data!=null) {
                    document.getElementById("display").style.visibility = "visible";
                }
            },
            error: function () {
                alert("错误");
            }
        })
    })
    //查询类目
    function leimu() {
        $.ajax({
            url: "itCon/queryAllType",
            type: "get",
            dataType: "html",
            // data:{'path':"member_order"},
            success: function (data) {
                $("#order_id").html(data);
            }
        })
    }
    //查询商品
    function shangpin() {
        $.ajax({
            url: "itCon/queryAllItem",
            type: "get",
            dataType: "html",
            // data:{'path':"member_order"},
            success: function (data) {
                $("#order_id").html(data);
            }
        })
    }
    //跳转新增表单
    function insert() {
        $.ajax({
            type: "post",
            dataType: "html",
            url: 'itCon/toInsert',
            // data: 参数,
            success: function (data) {       //data回调信息
                $("#order_id").html(data);
            }
        });
    }
    //新增商品（表单序列化提交）
    function button() {
        $.ajax({
            type: "get",
            dataType: "json",
            url: 'itCon/insertItem',
            data: $("#form_button").serialize(),
            success: function (data) {       //data回调信息
                // $("#order_id").html(data);
                alert(data);
                shangpin();
            },
            error:function () {
                shangpin();
            }
        });
    }
    //修改商品（通过id查询）
    function xiugai(id) {
        $.ajax({
            type: "get",
            dataType: "html",
            url: 'itCon/updateItem',
            data: {id:id},
            success: function (data) {       //data回调信息
                $("#order_id").html(data);
            },
            error:function () {
                alert("报错");
            }
        });
    }
    //删除商品（逻辑删除）
    function shagchu(id) {
        $.ajax({
            type: "get",
            dataType: "html",
            url: 'itCon/deleteItem',
            data: {id:id},
            success: function (data) {       //data回调信息
                // $("#order_id").html(data);
                alert("成功");
                shangpin();
            },
            error:function () {
                alert("报错");
            }
        });
    }
    //跳转新增类目
    function insertleimu() {
        $.ajax({
            type: "post",
            dataType: "html",
            url: 'itCon/toInsertleimu',
            // data: 参数,
            success: function (data) {       //data回调信息
                $("#order_id").html(data);
            }
        });
    }
    //新增类目
    function putleimu() {
        $.ajax({
            type: "get",
            dataType: "json",
            url: 'itCon/insert',
            data: $("#form_leimu").serialize(),
            success: function () {       //data回调信息
                // $("#order_id").html(data);
                alert("");
                leimu();
            },
            error:function () {
                leimu();
            }
        });
    }
    // 修改类目
    function xiugaileimu(id) {
        $.ajax({
            type: "get",
            dataType: "html",
            url: 'itCon/xiugaileimu',
            data: {id:id},
            success: function (data) {       //data回调信息
                $("#order_id").html(data);
            },
            error:function () {
                alert("报错");
            }
        });
    }
    //删除类目
    function shanchuleimu(id) {
        $.ajax({
            type: "get",
            dataType: "html",
            url: 'itCon/shanchuleimu',
            data: {id:id},
            success: function (data) {       //data回调信息
                // $("#order_id").html(data);
                alert("成功");
                leimu();
            },
            error:function () {
                leimu();
            }
        });
    }
</script>