<#list itemList as itemList>
<li title="${itemList.itemName}" class="menu-item hasImg" accessorykey="${itemList.typeId}-2048898" data-sale="0" data-price="${itemList.itemPrice}">
    <div class="menu-item-img">
        <img data-src="http://dhcmenuitem.dhero.cn/142615425540822113425540737808?imageView2/1/w/202/h/202/" src="http://dhcmenuitem.dhero.cn/0"  width="202" height="202" />
    </div>
    <div class="meun-item-name"><span class="ellipsis">${itemList.itemName}</span></div>
    <p class="ellipsis meun-item-des"></p>
    <div class="meun-item-sale clearfix">
        <span class="last"></span>
        <span class="price">￥${itemList.itemPrice}</span>
        <span ng-if="menuItemCount['${itemList.typeId}-2048898']" ng-class="{disinbl:menuItemCount['${itemList.typeId}-2048898']}"
              class="badge disnone" ng-bind="menuItemCount['${itemList.typeId}-2048898']"></span>
        <span class="fr">已售${itemList.itemCountnum}份</span>
    </div>
</li>
</#list>