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


    <section class="menupage-main common-width" ng-init="city_name='上海'">

        <header class="nav clearfix">
            <div class="fl clearfix nav-des">
                <img src="images/restaurant_04.jpg" alt="[半价菜][送可乐]樱花日本料理" class="fl" />
                <div class="fl nav-des-text">
                    <h2 class="ellipsis" title="[半价菜][送可乐]樱花日本料理">[半价菜][送可乐]樱花日本料理</h2>
                    <div class="clearfix">
                        <div class="fl nav-review">
                            <div style="width:65.00px;"></div>
                        </div>
                        <p class="nav-review-x">5星</p>
                    </div>
                </div>
            </div>
            <div class="fr clearfix nav-right">

                <div class="fl nav-right-blast line-right">
                    <p>150<span style="font-size:12px;color:#999;">元</span></p>
                    <span>起送</span>
                </div>

                <div class="fl nav-right-blast">
                    <p>37<span style="font-size:12px;color:#999;">分钟</span></p>
                    <span>送餐时间</span>
                </div>
                <div class="fl nav-right-collect line-left">

                    <div class="collect not-collect" title="收藏餐厅" data-rid="1592"></div>
                    <div class="collect-success">收藏成功</div>
                    <div id="review-text">未收藏</div>

                </div>
            </div>
        </header>
        <ul class="clearfix menu-nav-list" scroll-position-static="160">
            <li class="no-line "><a href="javascript:funscript('shop_intro')">餐厅介绍</a></li>
            <li class="active"><a href="javascript:caidan()">菜单</a></li>
            <li><a href="javascript:pinglun()">评论</a></li>
            <li><a href="javascript:funscript('shop_brand')" id='point-tab'>大家都在点</a></li>

        </ul>
        <section id="detail_all" class="main-box clearfix" lazy-img-load>

<script>
    $(function () {
        $.ajax({
            url: "/itCon/queryType",
            type: "get",
            dataType: "html",
            // data:{'path':"shop_detail_all"},
            success: function (data) {
                $("#detail_all").html(data);
            }
        })
    });
    function pinglun() {
        var id=1;
        $.ajax({
            url: "/userFeign/queryMerchantIdComment",
            type: "get",
            dataType: "html",
            data:{'merchantId':id},
            success: function (data) {
                alert(data)
                $("#detail_all").html(data);
            }
        })
    }
</script>