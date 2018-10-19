<template>
    <div class="location-page">
        <div class="header">
            <a href="/home">
                <img src="../../public/img/index/logo.42591fec.png">
            </a>
            <h4 class="title">选择城市</h4>
        </div>
        <p class="location">猜您当前位于：<span class="current">武汉市-湖北省</span></p>
        <div class="city-list">
            <div class="city-id">
                <div class="id">A</div>
                <ul class="city-item">
                    <li><a href="#" class="city">阿巴嘎旗</a></li>
                    <li><a href="#" class="city">阿巴嘎旗</a></li>
                    <li><a href="#" class="city">阿巴嘎旗</a></li>
                    <li><a href="#" class="city">阿巴嘎旗</a></li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data: function(){
        return {
            cityIds: ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        }
    },
    methods:{
        getCitys: function(){
            this.$http.get('/home/location').then(function(res){
                console.log(res);
            });
        }
    },
    created(){
        this.getCitys();
    }
}
</script>

<style scoped>
    .location-page{
        background: #fff;
    }
    .header{
        display: flex;
        padding: 5px 10px 0;
        border-bottom: 1px solid #ddd;
    }
    .header img{
        width: 34px;
        align-self: flex-start;
    }
    .header .title{
        width: 90%;
        margin: 0 10% 0 0;
        padding: 0;
        line-height: 37.5px;
        text-align: center;
    }
    .location{
        padding: 10px;
        color: #2f2f2f;
        margin: 0;
    }
    .location .current{
        color: #ffb100;
    }
    .city-list{
        padding-right: 10px;
    }
    .city-list .city-item{
        list-style: none;
        margin: 0;
        padding-left: 10px;
    }
    .city-list .city-item li{
        width: 100%;
        padding: 15px 0;
        border-bottom: 1px solid #ccc;
    }
    .city{
        color: #000;
    }
    .city-id .id{
        background: #eee;
        padding: 4px 0 4px 10px;
    }
    
</style>
