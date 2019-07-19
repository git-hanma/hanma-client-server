<article class="fl user-center-main">
    <header>账号管理</header>

    <section class="user-account-body">
        <ul class="fs12">
            <li>
                <label>头像：</label>
                <span><img src="" id="img"></span>
            </li>
            <li>
                <label>手机号码：</label>
                <span><input type="text" id="phone" readonly/></span>
            </li>
            <li>
                <label>昵称：</label>
                <span><input type="text" id="name" /></span>
            </li>
            <li>
                <label>性别：</label>
                <span>
                    <input type="radio" id="sex" value="0" name="xing"/>男
                    <input type="radio" id="sex2" value="1" name="xing">女
                </span>
            </li>
            <li>
                <label>登录密码：</label>
                <span><input type="password" id="pass"/></span>
            </li>
            <li>
                <label>订单信息：</label>
                <span>总计0单</span>
                <span>成功0单</span>
            </li>
            <li><label>氪 星 币：</label><span ng-bind="0|number"></span>个&nbsp;&nbsp;<a href="/account/gift/center/" title="兑换礼品" class="c_f60">兑换礼品</a></li>
            <li>
                <label></label>
                <span><input type="button" value="修改" onclick="updateUser()"></span>
            </li>
        </ul>
    </section>


</article>

<script>

    /**
     * 根据ID查询
     */
    $.ajax({
        url:'/userFeign/getUserId',
        type:'get',
        data:{"userId":1},
        dataType:'json',
        success:function(data){
            $("#phone").val(data.userPhone);
            $("#pass").val(data.userPass);
            $("#name").val(data.userName);
            if(data.userSex==0){
                $("#sex").attr("checked",true);
            }else{
                $("#sex2").attr("checked",true);
            }
        }
    })

    /**
     * 根据ID修改数据
     */
    function updateUser(){
        var userPass = $("#pass").val();
        var userSex = "";
        userSex = $("#sex").val();
        userSex = $("#sex2").val();
        var userName = $("#name").val();
        var userImg = $("#img").val();
        $.ajax({
            url:'/userFeign/updateUser',
            type:'post',
            data:{
                "userPass":userPass,
                "userSex":userSex,
                "userName":userName,
                "userImg":userImg,
                "userId":1
            },
            dataType:'json',
            success:function(data){
                if(data.code==200){
                    alert("修改成功");
                    window.location.reload();
               }else{
                    alert(data.msg);
                }
            }
        })
    }

</script>