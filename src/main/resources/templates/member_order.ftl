<article class="fl user-center-main" id="order_id">
    <header>历史订单</header>
    <section class="user-center-body order" id="orderBody">
    <#list order as list>
    <div class="order-list ">
        <div class="order-hd">
            <input type="hidden" value="${(list.orderId)!''}" id="orderId">
            <input type="hidden" value="${(list.merchantId)!''}" id="merchantId">
            <input type="hidden" value="${(list.userId)!''}" id="userId">
            <span><i>订单编号：</i>${(list.orderNumber)!''}</span><i>创建时间：</i>${(list.orderCreateTime?string("yyyy-MM-dd"))!''}
        </div>
        <div class="order-bd clearfix">
            <div class="fl restaurant-msg">
                <div>
                    <img src="http://dhcrestaurantlogo.dhero.cn/1019?v=1402245333" alt="" width="43" height="43" class="fl" />
                    <i class="fl">吉祥馄饨 (高安路店)</i>
                </div>
                <p class="clearfix">
                    <#--<i class="fl"></i>-->
                    <span class="fl">收货地址:${(list.addressShipping)!''}</span>
                </p>
            </div>
            <div class="fl order-type padding-margin">
                <p>订单类型：
                    <#if list.orderStatus==1000>
                            订单生成
                        <#elseif list.orderStatus==1100>
                            订单支付
                        <#elseif list.orderStatus==1200>
                            订单审核
                        <#elseif list.orderStatus==1300>
                            订单准备
                        <#elseif list.orderStatus==1400>
                            订单配送
                        <#else>
                            订单完成
                    </#if>
                </p>
                <p>订单状态：等待确认</p>
            </div>
            <div class="fl order-total padding-margin">
                <p>订单金额</p>
                <p><i>${(list.orderCountprice)!""}</i></p>
            </div>
            <div class="order-operate fl padding-margin">
                <p>
                    <a href="javascript:queryOrderSku(${(list.orderId)!''})" orderId="3788798" class="btn_a see-details">查看详情<i></i></a>
                </p>
                <#if list.orderStatus==1500>
                        <a href="javascript:openDialog()"  orderId="3788798" class="btn_a see-details" >评论</a>
                </#if>

            </div>
        </div>
        <div id="sku"></div>
    </div>
    </#list>
</section>
</article>
<script>
    //根据订单主表ID查询子表
    function queryOrderSku(skuId){
        alert(skuId);
        $.ajax({
            url: "/orderFeign/queryOrderSku",
            type: "get",
            data:{
                "orderId":skuId
            },
            dataType: "html",
            success: function (data) {
                $("#sku").html(data);
            }
        })
    }

    //打开dialog框
    function openDialog(){
        $.ajax({
            url:'/path',
            type:'get',
            data:{"path":"member_comment"},
            dataType:'html',
            success:function(savaPage){
                dialog({
                    title:'新增',
                    content:savaPage,
                    okValue:'确定',
                    ok:function(){
                        saveComment();
                    }
                }).showModal();
            }
        });
    }

    //新增评论
    function saveComment(){
        var orderId = $("#orderId").val();
        var merchantId = $("#merchantId").val();
        var userId = $("#userId").val();
        var commentDiscuss = $("input[name='comm']:checked").val();
        //根据用户ID查询此用户手机号
        alert(userId);
        $.ajax({
            url:'/userFeign/getUserId',
            type:'get',
            data:{
                "userId":userId
            },
            dataType:'json',
            success:function(data){
                //新增评论
                $.ajax({
                    url:'/userFeign/saveComment',
                    type:'post',
                    data:{
                        "userId":userId,
                        "orderId":orderId,
                        "merchantId":merchantId,
                        "commentDiscuss":commentDiscuss,
                        "userPhone":data.userPhone
                    },
                    dataType:'json',
                    success:function (data) {
                        if(data.code==200){
                            alert("操作成功");
                        }else{
                            alert(data.msg);
                        }
                    }
                })
            }
        })
    }
</script>
