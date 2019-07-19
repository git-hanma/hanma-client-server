<article class="fl user-center-main">
    <header>类目管理</header>
    <section class="user-address-main">
        <header>
            <h2><button><a onclick="insertleimu()">新增类目</a></button></h2>
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
                </colgroup>
                <thead>
                <tr>
                    <td>类目编号</td>
                    <td>商家编号</td>
                    <td>类目名称</td>
                    <td>创建时间</td>
                    <td>修改时间</td>
                    <td>状态</td>
                    <td>操作</td>
                </tr>
<#list tlist as tlist>
                <tr>
                    <td>${(tlist.typeId)!""}</td>
                    <td>${(tlist.merchantId)!""}</td>
                    <td>${(tlist.typeName)!""}</td>
                    <td>${(tlist.typeCreateTime?string("yyyy-MM-dd HH:mm:ss"))!""}</td>
                    <td>${(tlist.typeUpdateTime?string("yyyy-MM-dd HH:mm:ss"))!""}</td>
                    <td>${(tlist.typeYn)!""}</td>
                    <td>
                        <a href="javascript:xiugaileimu('${tlist.typeId}')">修改</a>
                        <a href="javascript:shanchuleimu('${tlist.typeId}')">删除</a>
                    </td>
                </tr>
</#list>
                </thead>

            </table>
        </article>
    </section>
</article>