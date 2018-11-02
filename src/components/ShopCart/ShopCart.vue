<template>
    <div class="app-shop-cart">
        <div class="shop-cart">
            <div class="left">
                <div>
                    <i class="icon-cart"><span class="sub">1</span></i>
                </div>
            </div>
            <div class="center">
                <p class="price">￥4</p>
                <p class="details">购物车空空如也~</p>
            </div>
            <span class="right">￥15起送</span>
        </div>
        <div class="order">
            <div class="list">
                <div class="clearcart">
                    <span>
                        <img src="../../../public/img/icon/rabbish.png">
                        清空购物车
                    </span>
                </div>
                <div>
                    <span>伊利 畅轻有机燕麦</span>
                    <div>
                        <span>￥8.5</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'ShopCart',
}
</script>

<style scoped>
    .shop-cart{
        display: flex;
        background-color: rgba(0,0,0,.8);
        height: 51px;
    }
    .left{
        width: 20%;
    }
    .center{
        width: 50%;
        display: flex;
        flex-direction: column;
        justify-content: center;

    }
    .right{
        width: 30%;
    }
    .price{
        color: #fff;
        font-size: 20px;
    }
    .details{
        color: #999;
        font-size: 12px;
    }
    .right{
        color: #999;
        font-size: 16px;
        line-height: 51px;
        text-align: center;
        padding: 0 10px;
    }
    .icon-cart{
        background: url("../../../public/img/icon/shopcart.png") no-repeat;
        display: block;
        width: 50px;
        height: 57px;
        background-position: 0 -116px;
        background-size: cover;
        position: relative;
        left: 10px;
        bottom: 10px;
        z-index: 111;
    }
    .icon-cart.active{
        background-position: 0 -172px;
    }
    .sub{
        position: absolute;
        width: 15px;
        height: 15px;
        text-align: center;
        line-height: 15px;
        font-size: 12px;
        font-style: normal;
        border-radius: 50%;
        background: red;
        color: #fff;
        right: 3px;
    }
    .order{
        position: absolute;
        background: rgba(0,0,0,.8);
        top: -1000px;
        bottom: 51px;
        left: 0;
        right: 0;
    }
    .list{
        position: absolute;
        bottom: 0;
        background-color: #fff;
        left: 0;
        right: 0;
    }
    .clearcart{
        background: #F4F4F4;
        text-align: right;
        padding: 10px;
    }
    .clearcart span{
        font-size: 12px;
    }
    .clearcart img{
        vertical-align: bottom;
    }
</style>
