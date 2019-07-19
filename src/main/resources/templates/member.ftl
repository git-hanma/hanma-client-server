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
                <img src="http://dhcrestaurantlogo.dhero.cn/1592?v=1415630726" alt="[半价菜][送可乐]樱花日本料理" class="fl" />
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
            <li class="active"><a href="javascript:funscript('shop_detail_all')">菜单</a></li>
            <li><a href="javascript:funscript('shop_comment')">评论</a></li>
            <li><a href="javascript:funscript('shop_brand')" id='point-tab'>大家都在点</a></li>

        </ul>

        <div id="detail_all"></div>
        <span id="element" style="position:absolute;display:none" class="badge">1</span>
        <!--one tip-->
        <!-- <div class="common-layer" id="layer-tip"></div>
        <div id="point-tip" class="point-tip" ng-controller="tipController">
            <div class="point-tab">大家都在点</div>
            <em></em>
            <div class="point-main">
                <i></i>
                <p>看看大家都在点啥</p>
                <button ng-click="closeTip()">知道了</button>
            </div>
        </div> -->
    </section>

</div>