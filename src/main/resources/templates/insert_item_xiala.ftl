<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
        <tr>类目编号
            <select style="width: 165px">
                <option>请选择</option>
                <#list xialalist as xialalist>
                    <option value="${xialalist.typeId}">${xialalist.typeName}</option>
                </#list>
            </select>
        </tr><br>
</body>
<script>
    $(function(){
        $("select").change(function(){
            alert($(this).val())
            var val=$(this).val();
            funtest(val);
        })
    })
</script>
</html>