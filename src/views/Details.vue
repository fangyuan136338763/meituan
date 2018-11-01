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
        <tu-details-content></tu-details-content>
    </div>
</template>

<script>
import DetailsContent from '../components/Details/DetailsContent.vue'
export default {
    data: function(){
        return {
            
        }
    },
    methods: {
        goBack: function(){
            history.go(-1);
        }
    },
    created(){
    },
    components: {
        "tu-details-content": DetailsContent
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
    
    
</style>
