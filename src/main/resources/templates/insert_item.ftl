<article class="fl user-center-main">
    <header>商品</header>
    <section class="user-address-main">
        <header>
            <h2>商品</h2>
        </header>
        <article class="mb10">
            <center>
            <form id="form_button">
            <table>
                <thead>
                     <input type="hidden" name="itemId" value="${(list.itemId)!''}">
                    <tr>类目编号<input name="typeId" value="${(list.typeId)!''}"></tr><br>
                    <tr>商品价格<input name="itemPrice" value="${(list.itemPrice)!''}"></tr><br>
                    <tr>商品名称<input name="itemName" value="${(list.itemName)!''}" ></tr><br>
                    <tr>已售数量<input name="itemCountnum" value="${(list.itemCountnum)!''}"></tr><br>
                    <tr>满减价格<input name="itemMoneyoff" value="${(list.itemMoneyoff)!''}"></tr><br>
                    <tr>商品图片<input name="itemImg" value="${(list.itemImg)!''}"></tr><br>
                     <tr>创建时间${(list.createDateTime)!''}</tr><br>
                     <tr>创建时间${(list.updateDateTime)!''}</tr><br>
                    <tr>数据状态<br>
                        上架<input type="radio" name="itemYn" value="0" checked>
                        下架<input type="radio" name="itemYn" value="1">
                    </tr><br>
                    <tr><input type="button" onclick="button()" value="提交"></tr>
                </thead>
            </table>
            </form>
            </center>
        </article>
    </section>
</article>