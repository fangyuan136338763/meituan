<template>
    <div class="app-order">
        <div class="header">
            <h1>订单</h1>
        </div>
        <div class="divider"></div>
        <div class="order-content">
            <div class="img">
                <img src="../../public/img/index/dcb842e3375031ca9c6a65326ff6c6c144517.jpg" alt="">
            </div>
            <div class="content">
                <div class="title">
                    <h1>敏贞川湘菜馆（汉街店）</h1>
                    <span>订单完成</span>
                </div>
                <ul class="order">
                    <li>
                        <span>酸辣土豆丝（自带米饭一份）</span><span>x1</span>
                    </li>
                    <li>
                        <span>酸辣土豆丝（自带米饭一份）</span><span>x1</span>
                    </li>
                    <li>
                        <span>酸辣土豆丝（自带米饭一份）</span><span>x1</span>
                    </li>
                </ul>
                <p>总计3个菜，实付￥32.42</p>
            </div>
        </div>
        <tu-footer></tu-footer>
    </div>
</template>

<script>
export default {
    data: function(){
        return {}
    },
    methods:{},
    created(){}
}
</script>

<style scoped>
    .header h1{
        height: 44px;
        font-size: 20px;
        text-align: center;
        line-height: 44px;
    }
    .divider{
        height: 10px;
        background: #eee;
        width: 100%;
    }
    .content{
        width: 100%;
    }
    .content p{
        float: right;
    }
    .order-content{
        display: flex;
        flex-flow: row nowrap;
        align-items: flex-start;
        padding: 10px;
        border-bottom: 1px solid #eee;

    }
    .order-content .img{
        width: 10%;
        margin-right: 10px;
        height: 50px;
        line-height: 50px;
    }
    .order-content img{
        width: 100%;
        vertical-align: middle;
        
    }
    .order{
        padding: 10px 0;
    }
    .order li{
        margin-bottom: 8px;
        display: flex;
        justify-content: space-between;
    }
    .title{
        height: 50px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid #eee;
    }
    .title h1{
        font-size: 18px;
        display: flex;
        align-items: center;
    }
    .title h1::after{
        content: '';
        width: 10px;
        height: 10px;
        border-top: 1px solid #999;
        border-right: 1px solid #999;
        transform: rotate(45deg);
    }
    
</style>
