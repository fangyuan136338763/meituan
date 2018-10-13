<template>
    <div class="header-container">
        <div class="top-container">
            <a class="top-left">
                <i class="mui-icon mui-icon-location"></i>
                <span>武汉市-湖北省</span>
                <i class="mui-icon mui-icon-forward"></i>
            </a>
            <a class="top-right">
                <i class="mui-icon mui-icon-search"></i>
                鸡排
            </a>
        </div>
        <a href="#" class="bg-img"><img src="../../public/img/index/bannertemp.e8a6fa63.jpg" alt=""></a>
    </div>
</template>

<script>
export default {
    data:function(){
        return {}
    },
    methods:{},
    created(){}
}
</script>

<style scoped>
    .header-container .bg-img img{
        width: 100%;
        
    }
    .header-container{
        position:relative;
    }
    .top-container{
        position: absolute;
        display: flex;
        flex-flow: row nowrap;
        margin-top: 15px;
        font-size: 15px;
        width: 100%;
        justify-content: space-around;
    }
    .top-container .top-left{
        color: #fff;
        background-color: rgba(0,0,0,.5);
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
    
</style>
