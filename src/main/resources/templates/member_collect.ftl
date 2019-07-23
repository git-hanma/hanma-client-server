<article class="fl user-center-main">
    <header>收藏的餐厅</header>


        <ul class="favorite clearfix transform-style">
        <#list collect as list>
            <li class="restaurant-item fl trans">
                <input type="hidden" value="${(list.collectId)!''}" >
                <div class="img-box fl">
                    <a href="#"><img src="http://dhcrestaurantlogo.dhero.cn/1019?v=1402245333" width="82px" height="82px"></a>
                </div>
                <article class="restaurant-introduce fl">
                    <h3 class="ellipsis"><a href="#">${(list.terrace.merchantName)!''}</a></h3>
                    <dl class="clearfix">
                        <dt class="fl">饮料小吃</dt>
                        <dd class="r-small-star fl">
                            <div class="r-small-star score" style="width:65.00px"></div>
                        </dd>
                    </dl>
                    <div class="restaurant-state clearfix">




                        <span><img src="http://dhcactivity.dhero.cn/Flswo958RM8GgqlKACT4tY5kr5K7?imageView2/1/w/15/h/15/" alt="" /></span>

                        <span><img src="http://dhcactivity.dhero.cn/FjnSIEuUzJvV6j-ifPq7zevJSt30?imageView2/1/w/15/h/15/" alt="" /></span>


                    </div>
                </article>
                <div class="close-favorite" data-rid="1019" ><a href="javascript:delCollectId(${(list.collectId)!''})">×</a></div>
            </li>
    </#list>
        </ul>

    <#--<page show="5" total="1"></page>-->



</article>

<script>
    //根据ID删除收藏
    function delCollectId(id){
        alert(id);
        $.ajax({
            url:'/userFeign/delCollectId',
            type:'post',
            data:{
                "collectId":id
            },
            dataType:'json',
            success:function(data){
                if(data.code==200){
                    alert("删除成功");
                    queryCollect();
                }else{
                    alert(data.msg);
                }
            }
        })
    }


</script>