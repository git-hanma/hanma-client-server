<article class="fl user-center-main">
    <header>商品类目</header>
    <section class="user-address-main">
        <header>
            <h2>商品类目</h2>
        </header>
        <article class="mb10">
            <center>
                <form id="form_leimu">
                    <table>
                        <thead>
                        <input type="hidden" name="typeId" value="${(typeUser.typeId)!''}">
                        <tr>商家编号<input name="merchantId" value="${(typeUser.merchantId)!''}"></tr><br>
                        <tr>类目名称<input name="typeName" value="${(typeUser.typeName)!''}" ></tr><br>
                        <tr>创建时间${(typeUser.createTimeStr)!''}</tr><br>
                        <tr>创建时间${(typeUser.updateTimeStr)!''}</tr><br>
                        <tr>数据状态<br>
                            上架<input type="radio" name="typeYn" value="0" checked>
                            下架<input type="radio" name="typeYn" value="1">
                        </tr><br>
                        <tr><input type="button" onclick="putleimu()" value="提交"></tr>
                        </thead>
                    </table>
                </form>
            </center>
        </article>
    </section>
</article>