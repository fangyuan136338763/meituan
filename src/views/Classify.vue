<template>
    <div class="classify">
        <div class="header">
            <img src="../../public/img/index/arrow.png" @click="goBack()">
            <h4 class="title">美食</h4>
        </div>
        <div class="classify-search">
            <ul class="classify-search-select">
                <li class="classify-search-item" @click.self="selectTab($event)" data-index="1">
                    美食
                    <img src="../../public/img/icon/down-arrow.png">
                </li>
                <li class="classify-search-item"  @click.self="selectTab($event)" data-index="2">
                    综合排序
                    <img src="../../public/img/icon/down-arrow.png">
                </li>
                <li class="classify-search-item"  @click.self="selectTab($event)" data-index="3">
                    筛选
                    <img src="../../public/img/icon/filter.png" class="icon-filter">
                </li>
            </ul>
            <div class="classify-content" v-if="selected==1">
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
            <div class="order-content" v-if="selected==2">
                <ul class="order">
                    <li class="order-item active">综合排序</li>
                    <li class="order-item">销量最高</li>
                    <li class="order-item">速度最快</li>
                    <li class="order-item">评分最高</li>
                    <li class="order-item">起送价最低</li>
                    <li class="order-item">配送费最低</li>
                </ul>
            </div>
            <div class="filter-content" v-if="selected==3">
                <div>
                    <p class="send">美团专送</p>
                </div>
                <div class="feature-content">
                    <span class="title">商家特色(可多选)</span>
                    <ul class="feature">
                        <li>点评高分</li>
                        <li>0元起送</li>
                        <li>新商家</li>
                        <li>品牌商家</li>
                        <li>跨天预定</li>
                    </ul>
                </div>
                <div class="discounts">
                    <span>优惠活动(单选)</span>
                    <p>
                        <img src="../../public/img/index/c2c0f31d0ebf0f60af115d058169c492992.png">
                        进店领劵
                    </p>
                    <p>
                        <img src="../../public/img/index/652eea4034250563fe11b02e3219ba8d981.png">
                        满返代金券
                    </p>
                </div>
                <div class="bottom">
                    <span>清除筛选</span>
                    <span class="active">完成</span>
                </div>
            </div>
        </div>
        <tu-list></tu-list>
    </div>
</template>

<script>
import List from '../components/List.vue'
export default {
    data: function(){
        return {
            selected: 0
        }
    },
    components: {"TuList": List},
    methods: {
        goBack: function(){
            // this.$router.push('/home');
            history.go(-1);
        },
        selectTab: function(e){
            if(this.selected == e.target.getAttribute("data-index")){
                this.selected  = 0;
            }else{
                this.selected = e.target.getAttribute("data-index");
            }
        },
        getClassifyId(){
            console.log(this.$route.params);
        }
    },
    created(){
        this.getClassifyId();
    }
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
        align-items: center;
    }
    .classify .header img{
        width: 24px;
        height: 25px;
        margin-left: 5px;
    }
    .classify .header .title{
        width: 95%;
        text-align: center;
        padding-right: 5%;
        line-height: 33px;
    }
    .classify-search li img{
        vertical-align: middle;
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
        width: 100%;
        position: absolute;
        background: #fff;
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
        width: 100%;
        position: absolute;
        background: #fff;
    }
    .order-content .order{
        list-style: none;
        margin: 0;
        padding: 0;
        font-size: 14px;
    }
    .order-content .order .active{
        color: #FFB000;
    }
    .order .order-item{
        width: 100%;
        padding: 10px;
        padding-left: 20px;
        border-bottom: 1px solid #ddd;
    }
    .filter-content{
        width: 100%;
        font-size: 14px;
        position: absolute;
        background: #fff;

    }
    .filter-content p.send{
        margin: 0;
        padding: 0;
        width: 103px;
        height: 34px;
        line-height: 34px;
        border: 1px solid #ccc;
        text-align: center;
        margin: 15px 0 15px 15px;
        font-size: 12px;
        color: black;
    }
    .feature-content{
        border-bottom: 1px solid #ccc;
        padding-bottom: 5px;
    }
    .feature-content .title{
        margin-left: 15px;
        /* font-size: 12px; */
        color: #999;
    }
    .feature-content .feature{
        list-style: none;
        margin: 0;
        padding: 0;
        display: flex;
        flex-flow: row wrap;
    }
    .feature-content .feature li{
        width: 28%;
        height: 34px;
        line-height: 34px;
        border: 1px solid #ccc;
        text-align: center;
        margin: 10px;
    }
    .discounts{
        padding-left: 15px;
        padding-bottom: 10px;
    }
    .discounts span{
        display: block;
        color: #999;
        padding: 10px 0;
    }
    .discounts p{
        /* font-size: 12px; */
        color: #000;
        margin-bottom: 10px;
    }
    
    .discounts p img{
        display: inline-block;
        width: 14px;
        height: 14px;
        vertical-align: middle;
        margin-right: 5px;
    }
    .filter-content .bottom{
        display: flex;
        flex-flow: row nowrap;
    }
    .filter-content .bottom span{
        width: 50%;
        height: 50px;
        border: 1px solid #ccc;
        text-align: center;
        line-height: 50px;
        font-size: 18px;
        color: #2f2f2f;
    }
    .filter-content .bottom span.active{
        background: #FFD161;
    }
</style>
