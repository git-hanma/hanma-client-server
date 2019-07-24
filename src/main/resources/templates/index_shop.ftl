<#--<!DOCTYPE html>-->
<#--<html lang="en">-->
<#--<head>-->
    <#--<meta charset="UTF-8">-->
    <#--<title>Title</title>-->
<#--</head>-->
<#--<body>-->

<#--</body>-->
<#--</html>-->

<#list listQuery as list>
<li class="restaurant-item fl">
    <div class="img-box fl">
    <#--<a href="path?path=shop_detail">-->
        <a href="/toPage?id=${list.merchantId}">
            <img src="/images/restaurant_04.jpg" width="82px" height="82px">
        </a>
    </div>
    <article class="restaurant-introduce fl">
    <#--<h3 class="ellipsis"><a href="/Shanghai/XianYuXianChuanQiGuangChang/menu/?gid=">望湘园 (传奇广场)</a></h3>
    <dl class="clearfix">
        <dt class="fl">饮料小吃</dt>
        <dd class="small-star fl">
            <div class="small-star score" style="width:52.00px"></div>
        </dd>
    </dl>-->
    ${(list.merchantName)!"无说明"}

        <div class="restaurant-state">
            <span><img src="http://dhcactivity.dhero.cn/FjnSIEuUzJvV6j-ifPq7zevJSt30?imageView2/1/w/15/h/15/" alt="" /></span>
        </div>
    </article>
</li>
</#list>