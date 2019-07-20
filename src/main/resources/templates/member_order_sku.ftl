<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<#--<div class="order-details clearfix">
    <div ng-show="orderStatus['3788798']" class="">
        <div class="order-menu-info fl">
            <div class="order-menu-inner">
                <div class="cart-thead clearfix">
                    <div class="goods-name">商品</div>
                    <div class="goods-count">份数</div>
                    <div class="goods-price">单价</div>
                    <div class="goods-subtotal">小计</div>
                </div>-->
                <#--<div class="cart-body">
                    <div class="cart-item clearfix" ng-repeat="menu_item in order['3788798'].menu_items_data">
                        <div class="goods-name ellipsis" ng-bind="menu_item.name"></div>
                        <div class="goods-count ellipsis" ng-bind="menu_item.quantity"></div>
                        <div class="goods-price" ng-bind="menu_item.price|currency:'￥'"></div>
                        <div class="goods-subtotal" ng-bind="menu_item.sub_total|currency:'￥'"></div>
                        <div class="accessory-item">
                            <div class="cart-item clearfix" ng-repeat="option in menu_item.options">
                                <div class="goods-name ellipsis" ng-bind="option.name"></div>
                                <div class="goods-count ellipsis" ng-bind="menu_item.quantity"></div>
                                <div class="goods-price" ng-bind="option.price|currency:'￥'"></div>
                                <div class="goods-subtotal" ng-bind="option.sub_total|currency:'￥'"></div>
                            </div>
                        </div>
                    </div>
                    <div class="cart-item cart-add-item clearfix" ng-repeat="add_item in order['3788798'].total_additions">
                        <div class="goods-name ellipsis" ng-bind="add_item.name"></div>
                        <div class="goods-count ellipsis" ng-bind="add_item.quantity"></div>
                        <div class="goods-price">
                            ￥<span ng-bind="add_item.price|number:2"></span>
                        </div>
                        <div class="goods-subtotal" >
                            ￥<span ng-bind="add_item.total_price|number:2"></span>
                        </div>
                    </div>
                </div>-->
               <#-- <div class="cart-footer clearfix">
                    <div class="order-adress fl">
                        <div ng-if="order['3788798'].preorder_time">
                            <label for="">送餐时间：</label><span ng-bind="order['3788798'].preorder_time"></span>
                        </div>
                        <div><label for="">送餐电话：</label><span ng-bind="order['3788798'].customer_phone"></span></div>
                        <div class="clearfix">
                            <label for="" class="fl">送餐地址：</label>
                            <p class="fl" ng-bind="order['3788798'].address_text"></p>
                        </div>
                        <div class="clearfix" ng-if="order['3788798'].comment">
                            <label for="" class="fl">备注：</label>
                            <p class="fl" ng-bind="order['3788798'].comment"></p>
                        </div>
                    </div>
                    <div class="total fr">
                        <p>配送费：<span ng-bind="order['3788798'].delivery_fee|currency:'￥'"></span></p>
                        <p>优惠券：<span ng-bind="order['3788798'].coupon_amount|currency:'￥'"></span></p>
                        <p class="order-total">实付金额：<span ng-bind="order['3788798'].order_total|currency:'￥'"></span></p>
                    </div>
                </div>
            </div>
        </div>
        <ul class="order-logistics fl">
            <li ng-class="{first: $index == 0}" ng-repeat=" workflow in order['3788798'].status_workflow">
                <p class="person-hd" ng-bind="workflow.date_time"></p>
                <p ng-if="$index == 0" class="failed_reason">
                    [[ workflow.status_desc ]] <span ng-if="order['3788798'].failed_reason">失败理由：[[ order['3788798'].failed_reason ]]</span>
                </p>
                <p ng-if="$index > 0">
                    [[ workflow.status_desc ]]
                </p>
            </li>
        </ul>
    </div>
</div>-->
    <div>

        <#list orderSkus as sku>
            <div class="order-hd">
                <input type="hidden" value="${(list.orderId)!''}" id="orderId">
                <span><i>价钱：</i>￥${(sku.skuCountprice)!''}</span><i>数量：</i>${(sku.skuNum)!''}
            </div>
        </#list>
    </div>

</body>
</html>