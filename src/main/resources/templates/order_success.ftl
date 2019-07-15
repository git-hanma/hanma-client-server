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


    <section class="confirm-main common-width clearfix">
        <div class="confirm-content fl">
            <div class="content">
                <h3>订单已成功提交</h3>
                <p>请保持手机13851435593畅通，稍后超人客服或餐厅会与您联系。</p>
                <p>感谢使用外卖超人。</p>


                <p>获得氪星币：<span class="c_xkb">320</span>个</p>


                <a href="/account/center/orders/" class="order">查看订单</a>

            </div>
        </div>
        <div class="app_download fl">
            <h4>下载外卖超人手机App</h4>
            <p>用手机扫描下方二维码</p>
            <p><img src="images/confirm_code.png" alt="App二维码" class="code-img"/></p>
            <p>或电脑直接下载</p>
            <div class="down-btn">
                <a href="/marketing/imessage/" target="_blank" class="ios" title="iOS下载">iOS下载</a>
                <a href="/marketing/android/" target="_blank" class="Android" title="Android下载">Android下载</a>
            </div>
            <p>也可以从各大应用市场搜索下载外卖超人</p>
            <div class="chaoren-weixin">
                <img src="images/confirm_code_small.png" class="code-img"/>
                <p>关注外卖超人微信公共账号微信也可以订外卖</p>
            </div>
        </div>
    </section>

    <!--one tip-->


    <div class="common-layer" id="layer-tip"></div>
    <div id="gift-tip" class="gift-tip">
        <em ng-click="closeTip()"></em>
        <div>
            您获得了320个氪星币！
            <p>您可以查看<a href="/account/gift/center/">氪星礼品站</a></p>
        </div>
    </div>



</div>