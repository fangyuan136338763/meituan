<template>
    <div class="list">
        <ul class="list-container">
            <li class="list-item" v-for="item in shops" :key="item.id">
                <router-link to="/details">
                    <div class="list-item-top">
                        <img :src="item.img" class="shop-image">
                        <div class="list-item-top-content">
                            <h4 class="title">{{item.title}}</h4>
                            <div class="shops-comment">
                                <div class="left">
                                    <ul class="star">
                                        <li><i></i></li>
                                        <li><i></i></li>
                                        <li><i></i></li>
                                        <li><i></i></li>
                                        <li><i></i></li>
                                    </ul>
                                    <span class="sales-counts">月售{{item.sales}}+</span>
                                </div>
                                <div class="space-time">
                                    <span class="time">{{item.p_time}}min</span>
                                    <span class="space">{{item.distance}}km</span>
                                </div>
                            </div>
                            <div class="send">
                                <div class="send-price">
                                    <span class="price">起送价￥{{item.p_price}}</span>
                                    <span>配送￥{{item.s_price}}</span>
                                </div>
                                <span class="send-self" v-if="item.isMtSend">美团专送</span>
                            </div>

                        </div>
                    </div>
                    <div class="list-item-bottom">
                        <img src="../../public/img/index/476ba65ee80b6385bab292c085baed17940.png"><span>本店支持开发票，开票金额50元起</span>
                    </div>
                </router-link>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    data: function(){
        return {
        }
    },
    props:['shops'],
    methods:{
        /* getData: function(){
            console.log(this.id);
            var url = "http://localhost:5050/home/classify?id="+this.id;
            this.$http.get(url).then(data=>{
                console.log(data);
                this.shops = data.data;
            });
        } */
    },
    created(){
        // this.getData();
    },
}
</script>

<style scoped>
    .list-container{
        background: #fff;
        padding: 10px 0;
    }
    .list-container .list-item{
        border-bottom: 1px solid #ccc;
        margin-left: 10px;
        margin-top: 15px;
    }
    .list-container .list-item .list-item-top{
        display: flex;
        width: 100%;
        flex-flow: row nowrap;
    }
    .list-container .list-item .list-item-top .shop-image{
        width: 25%;
        align-self: center;
        border: 1px solid #ccc;
    }
    .list-container .list-item .list-item-top .list-item-top-content{
        width: 75%;
        padding: 0 10px;
    }
    .list-container .list-item .list-item-top .list-item-top-content .title{
        font-weight: normal;
        font-size: 16px;
        color: #000;
    }
    .list-item-top-content .shops-comment{
        display: flex;
        flex-flow: row nowrap;
        justify-content: space-between;
        padding: 5px 0;
    }
    .list-item-top-content .shops-comment .left .sales-counts{
        font-size: 10px;
        color: #656565;
    }
    .list-item-top-content .shops-comment .space-time span{
        font-size: 10px;
        color: #656565;
    }
    .list-item-top-content .shops-comment .star{
        float: left;
        margin-top: 5px;
    }
    .list-item-top-content .shops-comment .star li{
        float: left;
        padding: 0 2px;
    }
    .list-item-top-content .shops-comment .star li i{
        width: 10px;
        height: 10px;
        display: block;
        background: url("../../public/img/index/newstars.ae33dbae.png") no-repeat;
        background-size: cover;
    }
    .list-item-top-content .shops-comment .sales-counts{
        padding-left: 10px;
    }
    .space-time .space::before{
        content: "";
        display: inline-block;
        border-right: 1px solid #ddd;
        height: 8px;
        margin: 0 5px;
        margin-bottom: 3px;
    }
    .send{
        display: flex;
        justify-content: space-between;
    }
    .send span{
        font-size: 10px;
        color: #656565;
    }
    .list-item-top-content .send-price .price::after{
        content: "";
        display: inline-block;
        height: 10px;
        border-left: 1px solid #ddd;
        margin: 0 10px;
    }
    span.send-self{
        font-size: 12px;
        background: #FFD161;
        padding: 0 3px;
        border-top-left-radius: 8px;
        border-bottom-right-radius: 8px;
        color: #000;
    }
    .list-item-bottom{
        text-align: center;
        padding: 10px 0;
    }
    .list-item-bottom img{
        width: 14px;
        height: 14px;
        vertical-align: middle;
    }
    .list-item-bottom span{
        font-size: 12px;
        color: #ccc;
        padding-left: 5px;
        text-overflow: ellipsis;
    }
    .list{
        padding-bottom: 45px;
    }


</style>
