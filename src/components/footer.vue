<template>
    <div id="footer">
        <div class="footer-item">
            <a href="#">
                <i></i>
                <p>首页</p>
            </a>
        </div>
        <div class="footer-item">
            <a href="#">
                <i></i>
                <p>订单</p>
            </a>
        </div>
        <div class="footer-item">
            <a href="#">
                <i></i>
                <p>我的</p>
            </a>
        </div>
    </div>
</template>

<script>
export default {
    name: "tu-footer",
    data: function(){
        return {}
    },
    methods:{},
    created(){}
}
</script>

<style>
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
        width: 30%;
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
        background-position: 0 -50px;
    }
    #footer .footer-item:nth-child(2) i{
        background-position: 0 -25px;
    }
    #footer .footer-item:last-child i{
        background-position: 0 -125px;
    }
    #footer .footer-item p{
        margin-bottom: 0;
        margin-top: -3px;
    }
</style>
