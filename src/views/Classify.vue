<template>
    <div class="classify">
        <div class="header">
            <i class="mui-icon mui-icon-arrowleft"></i>
            <h4 class="title">美食</h4>
        </div>
        <div class="classify-search">
            <ul class="classify-search-select">
                <li class="classify-search-item">美食<i class="mui-icon mui-icon-arrowdown"></i></li>
                <li class="classify-search-item">综合排序<i class="mui-icon mui-icon-arrowdown"></i></li>
                <li class="classify-search-item">筛选<i class="mui-icon-extra mui-icon-extra-filter"></i></li>
            </ul>
            <div class="classify-content">
                <div class="content-item">
                    <h5 class="content-header">美食<span class="count">1806</span></h5>
                    <ul class="content-list">
                        <li class="content-list-item">全部(1806)</li>
                        <li class="content-list-item">快餐便当(544)</li>
                        <li class="content-list-item">汉堡薯条(51)</li>
                        <li class="content-list-item">意面披萨(36)</li>
                        <li class="content-list-item">意面披萨(36)</li>
                    </ul>
                </div>
            </div>
            <div class="order-content">
                <ul class="order">
                    <li class="order-item">综合排序</li>
                    <li class="order-item">销量最高</li>
                    <li class="order-item">速度最快</li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data: function(){
        return {}
    },
    methods: {},
    created(){}
}
</script>

<style scoped>
    .classify{
        background: #fff;
    }
    .classify .header{
        display: flex;
        flex-flow: row nowrap;
        height: 44px;
        border-bottom: 1px solid #e4e4e4;
    }
    .classify .header .mui-icon{
        width: 5%;
        line-height: 44px;
        margin-left: 8px;
    }
    .classify .header .title{
        width: 95%;
        text-align: center;
        padding-right: 5%;
        line-height: 33px;
    }
    .classify-search li i{
        font-size: 14px;
        padding-left: 3px;
    }
    .classify-search-select{
        display: flex;
        list-style: none;
        font-size: 14px;
        padding: 10px 0;
        margin: 0;
        border-bottom: 1px solid #e4e4e4;
    }
    .classify-search-item{
        width: 33.33%;
        text-align: center;
    }
    .classify-search-select .classify-search-item:nth-child(2){
        border-left: 1px solid #e4e4e4;
        border-right: 1px solid #e4e4e4;
    }
    .classify-content{
        display: none;
    }
    .content-header{
        background: #efefef;
        padding: 10px 20px;
        margin: 0;
    }
    .count{
        display: inline-block;
        background: #ccc;
        color: #fff;
        font-size: 12px;
        border-radius: 20px;
        margin-left: 5px;
    }
    .content-list{
        display: flex;
        flex-flow: row wrap;
        list-style: none;
        font-size: 14px;
        padding: 0;
        margin: 0;
        text-align: center;
        padding-top: 10px;
        padding-left: 2%;
    }
    .content-list .content-list-item{
        width: 28%;
        border: 1px solid #e4e4e4;
        height: 37px;
        line-height: 37px;
        margin: 2%;
    }
    .order-content{
        display: block;
    }
    .order-content .order{
        list-style: none;
        margin: 0;
        padding: 0;
        font-size: 14px;
    }
    .order .order-item{
        width: 100%;
        padding: 10px;
        padding-left: 20px;
        border-bottom: 1px solid #ddd;
    }
</style>
