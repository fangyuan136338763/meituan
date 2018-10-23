<template>
    <div class="details-container">
        <div class="details-header">
            <div class="top">
                <img src="../../public/img/index/arrow.png">
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
                <ul class="left">
                    <li><div><span>热销</span></div></li>
                    <li><div><span>米饭必点！！！</span></div></li>
                    <li><div><span>新品</span></div></li>
                    <li class="active"><div><span>爆款推荐</span></div></li>
                    <li><div><span>新品推荐</span></div></li>
                    <li><div><span>精品小炒</span></div></li>
                    <li><div><span>新品</span></div></li>
                    <li><div><span>爆款推荐</span></div></li>
                    <li><div><span>新品推荐</span></div></li>
                    <li><div><span>精品小炒</span></div></li>
                </ul>
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
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="comment">

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
    .menu{
        display: flex;

    }
    .details-content .menu .left{
        /* width: 85px; */
        margin-right: 10px;
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
        width: 100%;
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
