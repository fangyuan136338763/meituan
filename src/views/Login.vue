<template>
    <div class="app-login">
        <div class="header">
            <img src="../../public/img/index/arrow.png">
            <h1 class="title">登录</h1>
            <span>立即注册</span>
        </div>
        <div class="input">
            <div class="phone">
                <img src="../../public/img/icon/phone.png" alt="">
                <input type="text" placeholder="请输入手机号">
            </div>
            <div class="password">
                <img src="../../public/img/icon/password.png" alt="">
                <input type="password" placeholder="请输入密码">
            </div>
            <div class="details">说明：注册/登录说明您已同意<a href="#">《美团用户协议》</a></div>
        </div>
        <div class="box">
            <button class="login">登录</button>
        </div>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
    .input img{
        width: 20px;
        height: 20px;
    }
    .header{
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
        border-bottom: 1px solid #ccc;
    }
    .header img{
        width: 20px;
    }
    .header span{
        color: #656565;
    }
    .title{
        font-size: 20px;
        font-weight: normal;
        margin-left: 30px;
    }
    .phone,.password{
        display: flex;
        flex-flow: row nowrap;
        margin: 0 20px;
        padding: 20px 0;
        border-bottom: 1px solid #DDD8CE;
    }
    .phone input,.password input{
        width: 100%;
        border: none;
        outline: none;
        padding-left: 10px;
    }
    .details{
        margin: 0 20px;
        padding: 20px 0;
        font-size: 12px;
        color: #DDD8CE;
    }
    .details a{
        font-size: 12px;
    }
    .details a:link{
        color: #f60;
    }
    .box{
        width: 100%;
        text-align: center;
    }
    .login{
        width: 90%;
        height: 50px;
        background: #fdc900;
        border: none;
        border-radius: 5px;
        outline: none;
    }
</style>
