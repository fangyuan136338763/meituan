<template>
    <div class="app-mine">
        <div class="header">
            <div class="user-msg">
                <img src="../../public/img/index/1a30f4c68fcc083d097c9c981912262a174435.png" >
                <p>用户名</p>
            </div>
        </div>
        <div class="col line">
            <img src="../../public/img/icon/location.png" alt="">
            <span>收货地址管理</span>
        </div>
        <div class="col">
            <img src="../../public/img/icon/quan.png" alt="">
            <span>商家代金券</span>
        </div>
        <div class="divider"></div>
        <div class="col line">
            <img src="../../public/img/icon/mail.png" alt="">
            <span>意见反馈</span>
        </div>
        <div class="col">
            <img src="../../public/img/icon/help.png" alt="">
            <span>常见问题</span>
        </div>
        <div class="divider"></div>
        <div class="loginout"><span @click="loginOut()">退出登录</span></div>
        <div class="bottom">
            <span>客服电话:101-097-77</span>
        </div>
        
        <tu-footer></tu-footer>
    </div>
</template>

<script>

export default {
    data: function(){
        return {}
    },
    methods:{
        loginOut(){
            sessionStorage.removeItem('id');
            this.$router.push('/login');
        }
    },
    created(){}
}
</script>

<style scoped>
    .header{
        height: 160px;
        background: url('//xs01.meituan.net/waimai_i/img/user-banner.8c03fc75.png');
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .header img{
        width: 78px;
        height: 78px;
        /* border: 10px solid rgba(255,255,255,0.4); */
        border-radius: 50%;
    }
    .user-msg{
        text-align: center;
    }
    .user-msg p{
        margin-top: 10px;
    }
    .col img{
        width: 20px;
        vertical-align: middle;
        margin-right: 10px;
    }
    .col{
        padding: 10px;
        padding-left: 0px;
        margin-left: 20px;
    }
    .line{
        border-bottom: 1px solid #eee;
    }
    .col::after{
        content: "";
        float: right;
        width: 5px;
        height: 5px;
        border-top: 1px solid #ccc;
        border-right: 1px solid #ccc;
        transform: rotate(45deg);
        margin-top: 6px;
    }
    .divider{
        width: 100%;
        height: 10px;
        background-color: #eee;
    }
    .bottom{
        height: 46px;
        width: 100%;
        text-align: center;
        line-height: 46px;
    }
    .loginout{
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ccc;
    }
    .loginout span{
        color: red;
    }
</style>
