<article class="fl user-center-main">
    <header>地址管理</header>

    <section class="user-address-main">
        <header>
            <h2>已保存地址</h2>
        </header>
        <article class="mb10">
            <table>
                <colgroup>
                    <col width="100px">
                    <col width="145px">
                    <col width="407px">
                    <col width="85px">
                </colgroup>
                <thead>
                <tr>
                    <th>收单人</th>
                    <th>手机号码</th>
                    <th>送餐地址</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tr ng-repeat="item in userAddressList">
                    <td ng-bind="item.customer_name"></td>
                    <td ng-bind="item.customer_phone"></td>
                    <td ng-bind="item.delivery_address"></td>
                    <td>
                        <a href="javascript:;" ng-click="editUserAddress($index)">修改</a>
                        <a href="javascript:;" ng-click="deleteUserAddress($index)">删除</a>
                    </td>
                </tr>
            </table>
        </article>
        <article ng-show="userAddressList.length < 8">
            <header class="mb10">
                <h2>新增地址</h2><strong>(最多只能保存 8 个有效地址)</strong>
            </header>
            <section class="add-address-box">
                <form novalidate="true" name="userAddressForm">
                    <div class="form-group mb10 row">
                        <label class="col-2">收单人：</label>
                        <div class="col-6">
                            <input type="text" required maxlength="10"
                                   ng-class="{error:userAddressForm.submit && userAddressForm.name.$invalid}" name="name"
                                   placeholder="如何称呼" ng-model="userAddress.customer_name">
                        </div>
                        <span ng-if="userAddressForm.submit && userAddressForm.name.$invalid">
                            <span class="vaildate-error">称呼不能为空</span>
                        </span>
                    </div>
                    <div class="form-group mb10 row">
                        <label class="col-2">手机号码：</label>
                        <div class="col-6">
                            <input type="text" maxlength="11" required mobile
                                   ng-class="{error:userAddressForm.submit && userAddressForm.contact.$invalid}" name="contact"
                                   placeholder="138xxxxxxxx" ng-model="userAddress.customer_phone">
                        </div>
                        <span ng-if="userAddressForm.submit && userAddressForm.contact.$error.required">
                            <span class="vaildate-error">手机号码不能为空</span>
                        </span>
                        <span ng-if="userAddressForm.submit && userAddressForm.contact.$error.mobile">
                            <span class="vaildate-error">请输入正确的11位手机号码</span>
                        </span>
                    </div>
                    <div class="form-group mb30 row">
                        <label class="col-2">送餐地址：</label>
                        <div class="col-6">
                            <input type="text" required
                                   ng-class="{error:userAddressForm.submit && userAddressForm.address.$invalid}" name="address"
                                   placeholder="详细地址，如武定西路1189号606室" ng-model="userAddress.delivery_address">
                        </div>
                        <span ng-if="(userAddressForm.submit && userAddressForm.address.$invalid)">
                            <span class="vaildate-error">送餐地址不能为空</span>
                        </span>
                    </div>
                    <div class="form-group mb30 row">
                        <label class="col-2"></label>
                        <div class="col-8">
                            <button class="btn btn-success normal-btn" ng-click="addUserAddress()">
                                保存送餐地址
                            </button>
                        </div>
                    </div>
                </form>
            </section>
        </article>
    </section>


</article>