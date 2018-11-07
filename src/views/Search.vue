<template>
    <div class="search-page">
        <div class="header">
            <img src="../../public/img/index/arrow.png" @click="goBack()">
            <input type="text" class="search-input" placeholder="请输入商家或商品名称" v-model="key">
            <span class="search-btn" @click="handleClick()">搜索</span>
        </div>
        <tu-list :shops="shops"></tu-list>
    </div>
</template>

<script>
import List from '../components/List.vue'
export default {
    data: function(){
        return {
            key: "",
            shops: []
        }
    },
    components: {
        "TuList": List
    },
    methods:{
        goBack: function(){
            this.$router.push('/home');
        },
        handleClick(){
            var url = "http://localhost:5050/product/search?key="+this.key;
            this.$http.get(url).then((res)=>{
                console.log(res);
                if(res.data.code==301){
                    this.shops = [];
                }else{
                    this.shops = res.data;
                }
                
            });
        }
    },
    watch:{
        'key': 'handleClick'
    },
    created(){

    }
}
</script>

<style scoped>
    *{
        padding: 0;
        margin: 0;
        text-decoration: none;
        list-style: none;
    }
    .search-page{
        background: #fff;
    }
    .header{
        display: flex;
        flex-direction: row;
        align-items: center;
        height: 44px;
        justify-content: space-around;
    }
    .header img{
        width: 24px;
        height: 25px;
    }
    .header input.search-input{
        margin: 0;
        height: 30px;
        width: 75%;
        font-size: 14px;
        background: #F2F2F2;
        border: 0;
    }
    .header span{
        width: 10%;
        height: 30px;
        line-height: 30px;
        text-align: center;
        font-size: 14px;
        background: #FFD161;
        border-radius: 3px;
    }
</style>
