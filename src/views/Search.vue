<template>
    <div class="search-page">
        <div class="header">
            <i class="mui-icon mui-icon-arrowleft"></i>
            <input type="text" class="search-input" placeholder="请输入商家或商品名称">
            <span class="search-btn">搜索</span>
        </div>
    </div>
</template>

<script>
export default {
    data: function(){
        return {}
    },
    methods:{},
    created(){}
}
</script>

<style scoped>
    .search-page{
        background: #fff;
    }
    .header{
        padding-top: 10px;
    }
    .mui-icon-arrowleft{
        font-size: 40px;
        vertical-align: middle;
    }
    .search-input{
        width: 75%;
        height: 30px;
        background: #F2F2F2;
        border-radius: 1px;
        border: 0;
    }
    .search-btn{
        display: inline-block;
        width: 50px;
        height: 30px;
        background: #FFD161;
        margin-bottom: 15px;
    }
</style>
