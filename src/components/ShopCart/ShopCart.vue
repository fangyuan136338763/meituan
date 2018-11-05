<template>
    <div class="app-shop-cart">
        <div class="shop-cart">
            <div class="left">
                <div>
                    <i class="icon-cart" :class="$store.getters.optCount?'active':''" @click="showCart()"><span class="sub" v-if="$store.getters.optCount">{{$store.getters.optCount}}</span></i>
                </div>
            </div>
            <div class="center">
                <p class="price" v-if="$store.getters.optCount">￥{{getSum}}</p>
                <p class="details" v-if="!$store.getters.optCount">购物车空空如也~</p>
                <p class="details" v-if="$store.getters.optCount">配送费以订单为准</p>
            </div>
            <span class="right" v-if="$store.getters.optCount==0">￥15起送</span>
            <span class="right" v-if="getSum<15&&$store.getters.optCount>0">还差￥{{(15-getSum).toFixed(2)}}</span>
            <span class="right active" v-if="getSum>=15">去结算</span>
        </div>
        <div class="order" @click.self="hideCart()" v-if="isShowCart">
            <div class="list">
                <div class="clearcart">
                    <span class="canhe">餐盒费{{$store.getters.optCount*1}}元</span>
                    <span @click="clearCart">
                        <img src="../../../public/img/icon/rabbish.png">
                        清空购物车
                    </span>
                </div>
                <tu-orderlist v-for="(item,i) in orderLists" :key="i" :item="item" :cartState="isShowCart"></tu-orderlist>
            </div>
        </div>
    </div>
</template>

<script>
import OrderList from './OrderList.vue'
export default {
    name: 'ShopCart',
    data: function(){
        return {
            isShowCart: false,
            orderLists: []
        }
    },
    methods: {
        hideCart(){
            this.isShowCart = false;
        },
        showCart(){
            if(this.$store.getters.optCount){
                this.isShowCart = true;
            }
        },
        getListData(res){
            if(res.state){
                this.orderLists.push(res);
                // console.log(this.orderLists);
            }
            if(res.counts==0){
                for(var i=0;i<this.orderLists.length;i++){
                    if(this.orderLists[i].id==res.id){
                        console.log(i);
                        this.orderLists.splice(i,1);
                        console.log(this.orderLists);
                    }
                }
            }
            // console.log(this.orderLists);
            if(!this.orderLists[0]){
                this.isShowCart = false;
            }
        },
        clearCart(){
            this.orderLists = [];
            this.$store.commit('clearCount');
            this.isShowCart = false;
            this.isClearCart = true;
            this.$root.bus.$emit('clearCart',true);
        }
    },
    created: function(){
    },
    mounted: function(){
      this.$root.bus.$on('buttonToCart',this.getListData);
    },
    computed: {
        getSum(){
            var result = 0;
            for(var tmp of this.orderLists){
                result += tmp.price*tmp.counts;
            }
            result += this.$store.getters.optCount*1;
            return result.toFixed(2);
        }
    },
    components: {
        'tu-orderlist': OrderList
    }
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
    
    .price{
        color: #fff;
        font-size: 20px;
    }
    .details{
        color: #999;
        font-size: 12px;
    }
    .right{
        width: 30%;
        color: #999;
        font-size: 16px;
        line-height: 51px;
        text-align: center;
        padding: 0 10px;
    }
    .right.active{
        background: #FFD161;
        color: #000;
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
        /* display: none; */
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
    .canhe{
        float: left;
    }
    .clearcart span{
        font-size: 12px;
    }
    .clearcart img{
        vertical-align: bottom;
    }
</style>
