<template>
    <div class="app-login">
        <div class="header">
            <img src="../../public/img/index/arrow.png" @click="goBack()">
            <h1 class="title">注册</h1>
            <span @click="toLoginPage()">已有账号？点击登录</span>
        </div>
        <div class="input">
            <div class="phone">
                <img src="../../public/img/icon/phone.png">
                <input type="text" placeholder="请输入手机号" v-model="uphone" @blur="checkphone()" @focus="clearmsg()">
            </div>
            <div class="password">
                <img src="../../public/img/icon/password.png">
                <input type="password" placeholder="请输入密码" v-model="upwd" @blur="checkpassword()" @focus="clearmsg()">
            </div>
            <div class="password">
                <img src="../../public/img/icon/password.png">
                <input type="password" placeholder="请再次输入密码" v-model="dupwd" @blur="checkcpassword()" @focus="clearmsg()">
            </div>
            <p class="err" v-if="errMsg">{{errMsg}}</p>
            <div class="details">说明：注册/登录说明您已同意<a href="#">《美团用户协议》</a></div>
        </div>
        <div class="box">
            <button class="login" @click="register()" :class="canRegister?'':'disabled'" :disabled="!canRegister">注册</button>
        </div>
    </div>
</template>

<script>
export default {
    data: function(){
        return {
            uphone: "",
            upwd: "",
            dupwd: "",
            canRegister: this.checkphone()&&this.checkpassword()&&this.checkcpassword(),
            errMsg: ''
        }
    },
    methods: {
        goBack(){
            history.go(-1);
        },
        toLoginPage(){
            this.$router.push('/login');
        },
        register(){
            var url = "http://localhost:5050/user/register";
            this.$http.post(url,'uphone='+this.uphone+"&upwd="+this.upwd).then((res)=>{
                console.log(res);
            });
        },
        checkphone(){
            var reg = /^1[34578]\d{9}$/;
            if(!reg.test(this.uphone)){
                this.errMsg = "手机号码格式错误!!!";
            }
            return reg.test(this.uphone);
        },
        checkpassword(){
            var reg = /\w{6,12}/;
            if(!reg.test(this.upwd)){
                this.errMsg = "密码为6-12位字母或数字";
            }
            return reg.test(this.upwd);
        },
        checkcpassword(){
            if(this.upwd!=this.dupwd){
                this.errMsg = "请确认两次输入的密码一样";
            }
            return this.upwd!=this.dupwd;
        },
        clearmsg(){
            this.errMsg = "";
        }
    },
    created(){

    }
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
    .header span{
        font-size: 10px;
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
        margin-left: 80px;
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
        border: none;
        border-radius: 5px;
        outline: none;
        background-color: green;
        color: #fff;
    }
    .login.disabled{
        background-color: #ddd;
    }
    .err{
        height: 40px;
        text-align: center;
        line-height: 40px;
        color: red;
    }
</style>
