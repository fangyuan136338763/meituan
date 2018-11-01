<template>
    <div class="app-shop-cart">
        <div class="shop-cart">
            <div class="left">
                <div>
                    <img src="" alt="">
                    <span>1</span>
                </div>
            </div>
            <div class="center">
                <p class="price">￥4</p>
                <p class="details">购物车空空如也~</p>
            </div>
            <span class="right">￥15起送</span>
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
        width: 55%;
    }
    .right{
        width: 25%;
    }
</style>
