<template>
    <div class="grid">
        <ul class="grid-container">
            <li class="grid-item" v-for="(item,i) in menuList" :key="i">
                <router-link :to="'/home/classify/'+item.fid">
                    <img :src="item.img">
                    <p>{{item.title}}</p>
                </router-link>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    name: "Grid",
    data: function(){
        return {
            menuList: []
        }
    },
    methods:{
        getGridData(){
            this.$http.get('http://localhost:5050/home/grid').then((res)=>{
                this.menuList = res.data;
                console.log(res);
            });
        }
    },
    created(){
        this.getGridData();
    }
}
</script>

<style scoped>
    .grid-container{
        list-style: none;
        display: flex;
        flex-flow: row wrap;
        justify-content: space-around;
        background: #fff;
        width: 100%;
        padding-top: 20px;
        text-align: center;
    }
    .grid-container .grid-item{
        width: 25%;
        margin-bottom: 20px;
    }
    .grid-container .grid-item img{
        width: 47px;
        height: 47px;
    }
    .grid-container .grid-item p{
        color: #2f2f2f;
        font-size: 14px;
        margin-top: 5px;
    }

</style>
