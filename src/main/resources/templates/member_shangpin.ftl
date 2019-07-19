<article class="fl user-center-main">
    <header>商品管理</header>
    <section class="user-address-main">
        <header>
            <h2><button><a onclick="insert()">新增商品</a></button></h2>
        </header>
        <article class="mb10">
            <table>
                <colgroup>
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                    <col width="50px">
                </colgroup>
                <thead>
                <tr>
                    <td>商品编号</td>
                    <td>类目编号</td>
                    <td>商品价格</td>
                    <td>商品名称</td>
                    <td>已售数量</td>
                    <td>满减价格</td>
                    <td>商品图片</td>
                    <td>创建时间</td>
                    <td>修改时间</td>
                    <td>状态</td>
                    <td>操作</td>
                </tr>
                <#list iList as iList>
                <tr>
                    <td>${(iList.itemId)!""}</td>
                    <td>${(iList.typeId)!""}</td>
                    <td>${(iList.itemPrice)!""}</td>
                    <td>${(iList.itemName)!""}</td>
                    <td>${(iList.itemCountnum)!""}</td>
                    <td>${(iList.itemMoneyoff)!""}</td>
                    <td>${(iList.itemImg)!""}</td>
                    <td>${(iList.itemCreateTime?string("yyyy-MM-dd HH:mm:ss"))!""}</td>
                    <td>${(iList.itemUpdateTime?string("yyyy-MM-dd HH:mm:ss"))!""}</td>
                    <td>${(iList.itemYn)!""}</td>
                    <td>
                        <#--<a href="itCon/updateItem?id=${iList.itemId}">修改</a>-->
                            <a href="javascript:xiugai('${iList.itemId}')">修改</a>
                        <a href="javascript:shagchu('${iList.itemId}')">删除</a>
                    </td>
                </tr>
                </#list>
                </thead>

            </table>
        </article>
    </section>
</article>
