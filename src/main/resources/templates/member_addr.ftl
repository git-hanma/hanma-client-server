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
                <#list list as add>
                <tr ng-repeat="item in userAddressList">
                    <input type="hidden" class="${(add.addressId)!''}" value='${(add.addressId)!""}'>
                    <td ng-bind="item.customer_name" class="${(add.addressId+"0")!''}" id="td">
                    ${(add.addressName)!''}
                        <input type="hidden" id="id" value='${(add.addressName)!""}'>
                    </td>
                    <td ng-bind="item.customer_phone" class="${(add.addressId+"1")!''}" id="td1" >${(add.addressPhone)!''}</td>
                    <td ng-bind="item.delivery_address" class="${(add.addressId+"2")!''}" id="td2">${(add.addressProvince)!''}${(add.addressCity)!''}${(add.addressCounty)!''}${(add.addressShipping)!''}</td>
                    <td id="td3" class="${(add.addressId+"3")!''}">
                        <a href="javascript:updateDiv('${(add.addressId)!''}')" ng-click="editUserAddress($index)">修改</a>
                        <a href="javascript:delAddressId('${(add.addressId)!''}')" ng-click="deleteUserAddress($index)">删除</a>
                    </td>
                </tr>
            </#list>
            </table>
        </article>
        <article ng-show="userAddressList.length < 8">
            <header class="mb10">
                <h2>新增地址</h2><strong>(最多只能保存 8 个有效地址)</strong>
            </header>
            <section class="add-address-box">
                <form novalidate="true" name="userAddressForm" id="form">
                    <div class="form-group mb10 row">
                        <label class="col-2">收单人：</label>
                            <input type="text" required maxlength="10" id="name"
                                   ng-class="{error:userAddressForm.submit && userAddressForm.name.$invalid}" name="name"
                                   placeholder="如何称呼" ng-model="userAddress.customer_name">
                        <span id="nameSpan"></span>
                    </div>
                    <div class="form-group mb10 row">
                        <label class="col-2">手机号码：</label>
                            <input type="text" maxlength="11" required mobile id="phone"
                                   ng-class="{error:userAddressForm.submit && userAddressForm.contact.$invalid}" name="contact"
                                   placeholder="138xxxxxxxx" ng-model="userAddress.customer_phone">
                        <span id="phoneSpan"></span>
                    </div>
                    <div class="form-group mb30 row">
                        <label class="col-2">送餐地址：</label>
                        <div data-toggle="distpicker">
                            <select data-province="山东省" style="width:120px" id="province"></select>
                            <select data-city="菏泽市" style="width:120px" id="city"></select>
                            <select data-district="曹县" style="width:120px" id="county"></select>
                        </div>

                    </div>
                    <div class="form-group mb30 row">
                        <label class="col-2">详细地址:</label>
                        <div>
                            <input type="text" style="width:300px" placeholder="详细地址：XX街道XX小区XX栋XX号" id="shipping">
                        </div>
                    </div>
                    <div class="form-group mb30 row">
                        <label class="col-2"></label>
                        <div class="col-8">
                            <input type="button" value="保存地址" onclick="saveAddress()">
                        </div>
                    </div>
                </form>
            </section>
        </article>
    </section>


</article>

<script>

    /*
     * 查询地址
    queryUserIdAddress();
    function queryUserIdAddress(){
        $.ajax({
            url:'/addressFeign/queryUserIdAddress',
            type:'get',
            data:{
                'userId':1
            },
            dataType:'json',
            success:function(data){

            }
        })
    }*/


    /**
     * 新增地址
     */
    function saveAddress(){
        var addressPhone = $("#phone").val();
        var addressName = $("#name").val();
        //判断收件人手机号不能为空
        if(addressPhone==""){
            $("#phoneSpan").html("<font color='red'>手机号不能为空</font>")
        }
        //判断收件人不能为空
        if(addressName==""){
            $("#nameSpan").html("<font color='red'>收单人不能为空</font>")
        }

        $.ajax({
            url:'/addressFeign/saveAddress',
            type:'post',
            data:{
                "addressName":$("#name").val(),
                "addressPhone":$("#phone").val(),
                "addressProvince":$("#province").val(),
                "addressCity":$("#city").val(),
                "addressCounty":$("#county").val(),
                "addressShipping":$("#shipping").val(),
                "userId":1
            },
            dataType:'json',
            success:function(data){
                if(data.code==200){
                    alert("新增成功");
                    query();
                }else{
                    alert(data.msg);
                }
            }
        })
    }

    /**
     * 根据ID删除
     */
    function delAddressId(id) {
        alert(id)
        $.ajax({
            url:'/addressFeign/delAddressId',
            type:'post',
            data:{
                "addressId":id
            },
            dataType:'json',
            success:function(data){
                if(data.code==200){
                    alert("删除成功");
                    query();
                }else{
                    alert(data.msg);
                }

            }
        })
    }
    var adId = null;
    //修改div属性和回显数据
    function  updateDiv(id) {
        adId= id;
//        var id2 =$("."+id).val();
//        alert(id2);
            $("."+id+"0").html("<td><input type='text' style='height:10px' id='addName' ></td>")

            $("."+id+"1").html("<td><input type='text' style='height:10px' id='addPhone'></td>")

            $("."+id+"2").html("<td><div id='dist'><select  style='width:70px' id='addProvince'></select><select  style='width:100px' id='addCity'></select><select  style='width:100px' id='addCounty'></select></div>详细地址:<input type='text' style='height:10px' id='addShipping'></td>")

//            $("#td1").html("<td><input type='text' style='height:10px'></td>")

//            $("#td2").html("<td><input type='text' style='height:10px'></td>")

            $("."+id+"3").html("<td><a href='javascript:updateAddress(adId)'>确定</a><br/><a href='javascript:query()'>取消</a></td>")
//            alert(id);
            $("#dist").distpicker();
            $.ajax({
                url: '/addressFeign/getAddressId',
                type: 'get',
                data: {
                    "addressId":id
                },
                dataType: 'json',
                success: function (data) {
                    //想要给三级联动赋值 首先要把默认值清除
                    $('#dist').distpicker('destroy');
                    //设置三级联动值
                    $('#dist').distpicker({
                        province:data.addressProvince,
                        city: data.addressCity,
                        district: data.addressCounty
                    });


                    $("#addPhone").val(data.addressPhone);
                    $("#addName").val(data.addressName);
                    //$("#addProvince").val(data.addressProvince);
                    //$("#addCity").val(data.addressCity);
                    //$("#addCounty").val(data.addressCounty);
                    $("#addShipping").val(data.addressShipping);

                }
            })
    }

    //修改地址
    function updateAddress(id){

        var addressPhone = $("#addPhone").val();
        var addressName = $("#addName").val();
        var addressProvince = $("#addProvince").val();
        var addressCity = $("#addCity").val();
        var addressCounty = $("#addCounty").val();
        var addressShipping = $("#addShipping").val();
        $.ajax({
            url:'/addressFeign/updateAddress',
            type:'post',
            data:{
                "addressPhone":addressPhone,
                "addressName":addressName,
                "addressProvince":addressProvince,
                "addressCity":addressCity,
                "addressCounty":addressCounty,
                "addressShipping":addressShipping,
                "addressId":id
            },
            dataType:'json',
            success:function(data){
                if(data.code ==200){
                    alert("修改成功");
                    query();
                }else{
                    alert(data.msg);
                }
            }
        })
    }


    //刷新查询
    function query(){
        $.ajax({
            url: "/addressFeign/queryUserIdAddress",
            type: "get",
            data:{
                "userId":1
            },
            dataType: "html",
            success: function (data) {
                $("#order_id").html(data);
            }
        })
    }

</script>

<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/js/distpicker.data.js"></script>
<script type="text/javascript" src="/js/distpicker.js"></script>
<script type="text/javascript" src="/js/main.js"></script>