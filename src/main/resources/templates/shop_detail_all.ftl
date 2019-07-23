    <div class="main fl">
        <div class="inner-main">
            <nav class="list-order-nav clearfix" id="list-order-nav">
                <ul class="fl">
                    <li>菜单排序：</li>
                    <li><a href="javascript:void(0);" class="sort-default active">默认排序</a></li>
                    <li class="split-line">|</li>
                    <li><a href="javascript:void(0);" class="sort-sale descend">销量<i class="order-icon"></i></a></li>
                    <li class="split-line">|</li>
                    <li><a href="javascript:void(0);" class="sort-price">价格<i class="order-icon"></i></a></li>
                    <li class="split-line">|</li>
                </ul>
            </nav>
            <div id="menu-main" class="menu-main">

            <#list typelist as typelist>
                <article class="collapse section-${typelist.typeId}">
                    <header accordion>
                        <h3 class="ellipsis">${typelist.typeName} </h3>
                        <span ng-if="sectionCount['${typelist.typeId}']" ng-class="{disinbl:sectionCount['${typelist.typeId}']}"
                              class="badge disnone" ng-bind="sectionCount['${typelist.typeId}']"></span>
                        <i class="icon shrink-icon position"></i>
                    </header>
                    <section>
                        <ul class="clearfix menu-group menu-group-img menu-first-load">
                            <div id="${typelist.typeId}"  class="clearfix menu-group menu-group-img menu-first-load">

                                <script>
                                    iframe('${typelist.typeId}');
                                </script>

                            </div>

                        </ul>
                    </section>
                </article>
            </#list>


            </div>
        </div>
    </div>
    <aside class="fl">
        <article class="cart " scroll-position-static="160" top="42">
            <div class="menu-cart">
                <header>
                    <!-- <h4 class="ellipsis w100p" title="[半价菜][送可乐]樱花日本料理">[半价菜][送可乐]樱花日本料理</h4> -->
                    <h5>
                        购物车
                        <i class="icon trash-can-icon fr " ng-click="clearCart()"></i>
                    </h5>
                </header>
                <section>
                    <div class="inner-cart empty" ng-class="{empty:isEmpty}">
                        <div class="cart-thead clearfix">
                            <div class="goods-name fs16">商品名</div>
                            <div class="goods-count fs16">份数</div>
                            <div class="goods-price fs16">单价</div>
                            <div class="goods-subtotal fs16">小计</div>
                        </div>
                        <div class="cart-item-list select-none">
                            <div class="disnone" ng-class="{disnone:isEmpty}">
                                <div class="cart-item cart-data clearfix" ng-repeat="obj in cartDatas">
                                    <div class="goods-name ellipsis" ng-bind="obj.name"></div>
                                    <div class="goods-count clearfix ellipsis">
                                        <span class="goods-sub icon sub-icon fl" sub-goods="[[$index]]"></span>
                                        <span class="goods-nums fl" ng-bind="obj.quantity"></span>
                                        <span class="goods-add icon add-icon fl" ng-click="addGoodsNum($index)"></span>
                                    </div>
                                    <div class="goods-price">￥<span ng-bind="obj.price|number:2"></span></div>
                                    <div class="goods-subtotal">￥<span ng-bind="(obj.quantity * obj.price)|number:2"></span></div>

                                    <div class="accessory-item" ng-class="{firstitem:$first}" ng-repeat="item in obj.options">
                                        <div class="cart-item clearfix">
                                            <div class="goods-name ellipsis" ng-bind="item.name"></div>
                                            <div class="goods-count fs20">
                                                <span class="goods-sub fl"></span>
                                                <span class="goods-nums fl" ng-bind="item.quantity"></span>
                                            </div>
                                            <div class="goods-price">￥<span ng-bind="item.price|number:2"></span></div>
                                            <div class="goods-subtotal">￥<span ng-bind="(item.price * item.quantity)|number:2"></span></div>
                                        </div>
                                    </div>
                                </div>
                                <!--附加物-->
                                <div class="cart-item cart-item-addendum cart-data clearfix" ng-repeat="addition in additions">
                                    <div class="goods-name ellipsis" ng-bind="addition.name"></div>
                                    <div class="goods-count clearfix ellipsis">
                                        <span class="goods-nums fl" ng-bind="addition.quantity"></span>
                                    </div>
                                    <div class="goods-price">￥<span ng-bind="addition.price|number:2"></span></div>
                                    <div class="goods-subtotal">￥<span ng-bind="(addition.price * addition.quantity)|number:2"></span></div>
                                </div>
                                <!--附加物-->
                            </div>
                            <div class="cart-item-empty">暂无商品，请在左边的菜单上点单</div>
                        </div>
                        <div id="cart-item-list"></div>
                        <div class="total clearfix disnone" ng-class="{disnone:isEmpty}">
                            <div class="fl">配送费：￥<span ng-bind="deliveryCost|number:2"></span></div>
                            <div class="fr">合计：￥<span ng-bind="total|number:2"></span></div>
                        </div>
                        <div class="checkout">
                            <button class="checkout btn" ng-disabled="isPlaceOrder" ng-click="createOrder()" ng-bind="createOrderBtnName" onclick="funMember('order')">立即下单</button>
                        </div>
                    </div><#--<a href="javascript:funMember('order')"></a>-->
                </section>
            </div>

            <article class="restaurant-notice">
                <header>
                    餐厅活动
                </header>
                <section>
                    <ul>


                        <li><i class="status-icon"></i><span>餐厅支持在线支付</span></li>



                        <li><img src="http://dhcactivity.dhero.cn/Fg-4kUvXVpR1DRR0O3VFr73KHEQr?imageView2/1/w/15/h/15/" alt="" /><span>每单赠送价值15元进口果汁1瓶！</span></li>

                        <li><img src="http://dhcactivity.dhero.cn/Flswo958RM8GgqlKACT4tY5kr5K7?imageView2/1/w/15/h/15/" alt="" /><span>活动菜品立减6元，多点多减！</span></li>

                        <li><img src="http://dhcactivity.dhero.cn/FjnSIEuUzJvV6j-ifPq7zevJSt30?imageView2/1/w/15/h/15/" alt="" /><span>该餐厅已通过认证</span></li>


                    </ul>
                </section>
            </article>
        </article>
    </aside>
    </section>
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