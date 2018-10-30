<template>
    <div class="details-container">
        <div class="details-header">
            <div class="top">
                <img src="../../public/img/index/arrow.png" @click="goBack">
                <h3 class="title">谢先生餐厅（乐都汇店）</h3>
            </div>
            <ul class="selector">
                <li class="selector-item"><span class="active">点菜</span></li>
                <li class="selector-item"><span>评价</span></li>
                <li class="selector-item"><span>商家</span></li>
            </ul>
        </div>
        <div class="details-content">
            <div class="menu">
                <div class="left">
                    <div class="middle">
                        <ul class="left-menu" :style="'height:'+menus.length*61+'px'">
                            <li v-for="(item,i) in menus" :key="i" @click="choose(i)" :class="selected==i?'active':''"><div><span>{{item.title}}</span></div></li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <h5 class="right-title">热销</h5>
                    <ul class="product-list">
                        <li class="list-item">
                            <img src="../../public/img/index/3bfda051b23751a32bc1003333abbad432768.jpg" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">东北有机大米</h6>
                                <span class="details">精选东北有机大米（米饭单点）单点米饭不配送</span>
                                <span class="zan">赞86</span>
                                <div class="bottom">
                                    <span class="price">￥2.5</span>
                                    <img src="../../public/img/index/icon-add.png" class="img-add">
                                </div>
                            </div>
                        </li>
                        <li class="list-item">
                            <img src="../../public/img/index/3bfda051b23751a32bc1003333abbad432768.jpg" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">东北有机大米</h6>
                                <span class="details">精选东北有机大米（米饭单点）单点米饭不配送</span>
                                <span class="zan">赞86</span>
                                <div class="bottom">
                                    <span class="price">￥2.5</span>
                                    <img src="../../public/img/index/icon-add.png" class="img-add">
                                </div>
                            </div>
                        </li>
                        <li class="list-item">
                            <img src="../../public/img/index/3bfda051b23751a32bc1003333abbad432768.jpg" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">东北有机大米</h6>
                                <span class="details">精选东北有机大米（米饭单点）单点米饭不配送</span>
                                <span class="zan">赞86</span>
                                <div class="bottom">
                                    <span class="price">￥2.5</span>
                                    <img src="../../public/img/index/icon-add.png" class="img-add">
                                </div>
                            </div>
                        </li>
                        <li class="list-item">
                            <img src="../../public/img/index/3bfda051b23751a32bc1003333abbad432768.jpg" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">东北有机大米</h6>
                                <span class="details">精选东北有机大米（米饭单点）单点米饭不配送</span>
                                <span class="zan">赞86</span>
                                <div class="bottom">
                                    <span class="price">￥2.5</span>
                                    <img src="../../public/img/index/icon-add.png" class="img-add">
                                </div>
                            </div>
                        </li>
                        <li class="list-item">
                            <img src="../../public/img/index/3bfda051b23751a32bc1003333abbad432768.jpg" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">东北有机大米</h6>
                                <span class="details">精选东北有机大米（米饭单点）单点米饭不配送</span>
                                <span class="zan">赞86</span>
                                <div class="bottom">
                                    <span class="price">￥2.5</span>
                                    <img src="../../public/img/index/icon-add.png" class="img-add">
                                </div>
                            </div>
                        </li>
                        <li class="list-item">
                            <img src="../../public/img/index/3bfda051b23751a32bc1003333abbad432768.jpg" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">东北有机大米</h6>
                                <span class="details">精选东北有机大米（米饭单点）单点米饭不配送</span>
                                <span class="zan">赞86</span>
                                <div class="bottom">
                                    <span class="price">￥2.5</span>
                                    <img src="../../public/img/index/icon-add.png" class="img-add">
                                </div>
                            </div>
                        </li>
                        <li class="list-item">
                            <img src="../../public/img/index/3bfda051b23751a32bc1003333abbad432768.jpg" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">东北有机大米</h6>
                                <span class="details">精选东北有机大米（米饭单点）单点米饭不配送</span>
                                <span class="zan">赞86</span>
                                <div class="bottom">
                                    <span class="price">￥2.5</span>
                                    <img src="../../public/img/index/icon-add.png" class="img-add">
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="comment-content">
            <div class="comment">

            </div>
        </div>
    </div>
</template>

<script>
export default {
    data: function(){
        return {
            menus: [],
            selected: 0
        }
    },
    methods: {
        goBack: function(){
            history.go(-1);
        },
        getData: function(){
            this.$http.get('http://localhost:5050/details').then((res)=>{
                console.log(res);
                this.menus = res.data.menus;
            });
        },
        choose: function(i){
            this.selected = i;
        }
    },
    created(){
        this.getData();
    }
}
</script>

<style scoped>
    .details-header{
        position: fixed;
        top: 0;
        background-color: #fff;
        width: 100%;
    }
    .details-header .top{
        display: flex;
        height: 44px;
        align-items: center;
        border-bottom: 1px solid #ddd;

    }
    .details-header .top img{
        width: 24px;
        height: 25px;
        margin-left: 5px;
    }
    .details-header .top .title{
        line-height: 43px;
        text-align: center;
        width: 100%;
        height: 100%;
        padding-right: 24px;
    }
    .selector{
        display: flex;
        height: 45px;
        border-bottom: 1px solid #ddd;
    }
    .selector-item{
        width: 33.33%;
    }
    .selector-item span{
        display: block;
        width: 40%;
        height: 100%;
        text-align: center;
        margin: 0 auto;
        line-height: 45px;
        font-size: 16px;
    }
    .selector-item span.active{
        border-bottom: 4px solid #fc6;
    }
    .details-content{
        padding-top: 88px;
    }
    .details-content .menu .left{
        position: fixed;
        top: 87px;
        bottom: 0px;
        left: 0px;
        overflow: hidden;
        width: 90px;
        /* background: red; */
    }
    .middle{
        position: absolute;
        top: 0;
        bottom: 0px;
        left: 0px;
        overflow-y: scroll;
        padding-right: 20px;
        width: 100px;
        /* background: yellow; */
    }
    .details-content .menu .left li{
        width: 85px;
        height: 61px;
        background-color: #ddd;
        padding: 0 5px;
    }
    .details-content .menu .left li.active{
        background-color: #fff;
    }
    .details-content .menu .left li div{
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        border-bottom: 1px solid #bfbfbf;
    }
    
    .details-content .menu .left li span{
        text-align: center;
    }
    .right{
        margin-left: 90px;
    }
    .right-title{
        height: 36px;
        font-weight: normal;
        line-height: 36px;
    }
    .right-title::before{
        content: "";
        display: inline-block;
        width: 2px;
        height: 10px;
        background-color: #fc6;
        margin-right: 3px;
    }
    .right .product-img{
        width: 83px;
        height: 62px;
        margin-right: 10px;
    }
    .list-item{
        display: flex;
        padding: 15px 0 10px;
        border-bottom: 1px solid #ddd;
    }
    .list-content{
        display: flex;
        flex-direction: column;
        width: 100%;
        padding-right: 10px;
    }
    .product-title{
        font-size: 16px;
        font-weight: normal;
        margin-bottom: 5px;
    }
    .details,.list-content .zan{
        font-size: 12px;
        color: #a9a9a9;
        margin-bottom: 5px;
    }
    .list-content .bottom{
        display: flex;
        justify-content: space-between;
    }
    .list-content .price{
        font-size: 18px;
        color: #fe4d3d;
        font-weight: 800;
    }
    .img-add{
        width: 24px;
        height: 25px;
        border-radius: 50%;
    }
    
</style>
