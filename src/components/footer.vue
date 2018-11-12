<template>
    <div id="footer">
            <div class="footer-item" v-for="(p,i) in list" :key="i">
                <router-link :to="i==0?path[i]:id?path[i]:'/login'">
                        <i :class="i==index?'active':''"></i>
                        <p>{{p}}</p>
                </router-link>
            </div>
    </div>
</template>

<script>
export default {
    name: "TuFooter",
    data: function(){
        return {
            list:["首页","订单","我的"],
            path:["/home","/order","/mine"],
            index: 0,
            id: 0
            
        }
    },
    methods:{
        getId(){
            this.id = sessionStorage.getItem('id');
        }
    },
    created(){
        // console.log(this.$route.path);
        this.index = this.path.indexOf(this.$route.path);
        // console.log(this.index);
        this.getId();
    }
}
</script>

<style scoped>
    #footer{
        position: fixed;
        bottom: 0;
        display: flex;
        flex-flow: row nowrap;
        justify-content: space-around;
        width: 100%;
        background-color: rgba(246,246,246,0.95);
        border-top: 1px solid #b6b6b6;
        padding-top: 8px;
    }
    .footer-item{
        text-align: center;
    }
    #footer .footer-item a{
        display: block;
    }
    #footer .footer-item i{
        display: inline-block;
        width: 25px;
        height: 25px;
        background: url("../../public/img/index/tab-icons.949e08ab.png") no-repeat;
        background-size: 25px auto;
    }
    #footer .footer-item:first-child i{
        background-position: 0 -75px;
    }
    #footer .footer-item:nth-child(2) i{
        background-position: 0 -25px;
    }
    #footer .footer-item:last-child i{
        background-position: 0 -125px;
    }
    #footer .footer-item:first-child i.active{
        background-position: 0 -50px;
    }
    #footer .footer-item:nth-child(2) i.active{
        background-position: 0 0;
    }
    #footer .footer-item:last-child i.active{
        background-position: 0 -100px;
    }
    #footer .footer-item p{
        margin-bottom: 0;
        margin-top: -5px;
        font-size: 13px;
        
    }
</style>
