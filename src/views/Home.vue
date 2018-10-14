<template>
    <div class="header-container">
        <div class="top-container">
            <router-link class="top-left" to="/home/location">
                <i class="mui-icon mui-icon-location"></i>
                <span>武汉市-湖北省</span>
                <i class="mui-icon mui-icon-forward"></i>
            </router-link>
            <router-link class="top-right" to="/home/search">
                <i class="mui-icon mui-icon-search"></i>
                鸡排
            </router-link>
        </div>
        <a href="#" class="bg-img"><img src="../../public/img/index/bannertemp.e8a6fa63.jpg"></a>
        <tu-grid></tu-grid>
        <div class="near-shops">
            <p>—— 附近商家 ——</p>
        </div>
        <tu-list></tu-list>
        <tu-footer></tu-footer>
    </div>
</template>

<script>
import Grid from '../components/Grid.vue'
import List from '../components/List.vue'
export default {
    data:function(){
        return {}
    },
    methods:{},
    created(){},
    components:{
        "tuGrid": Grid,
        "tuList": List
    }
}
</script>

<style scoped>
    .header-container .bg-img{
        display: block;
        height: 175px;
    }
    .header-container .bg-img img{
        width: 100%;
        height: 100%;
    }
    .header-container{
        position:relative;
    }
    .top-container{
        position: absolute;
        display: flex;
        flex-flow: row nowrap;
        margin-top: 15px;
        font-size: 14px;
        width: 100%;
        justify-content: space-around;
    }
    .top-container .top-left{
        color: #fff;
        background-color: rgba(0,0,0,.3);
        border-radius: 50px;
        line-height: 33px;
        padding: 0 5px;
    }
    .top-container .top-left .mui-icon-location,.mui-icon-forward{
        font-size: 18px;
    }
    .top-container .top-right{
        background-color: #fff;
        width: 169px;
        border-radius: 50px;
        padding-left: 10px;
        font-size: 14px;
        line-height: 28px;
        margin-top: 5px;
        color: black;
    }
    .top-container .top-right .mui-icon-search{
        font-size: 18px;
    }
    .near-shops{
        text-align: center;
        background: #fff;
        padding-top: 30px;
        margin-top: -10px;
    }
    .near-shops p{
        font-size: 16px;
        color: #333;
        font-weight: bold;
    }
</style>
