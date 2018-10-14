<template>
    <div class="grid">
        <ul class="grid-container">
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/8b5e1702d4145ccf058ba5fb31008c5310912.png">
                    <p>美食</p>
                </router-link>
            </li>
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/45ff2f098a20a77122bff8385192f0ec10547.png">
                    <p>美团超市</p>
                </router-link>
            </li>
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/12a9834827909fa55f54bce96e67470711250.png">
                    <p>生鲜果蔬</p>
                </router-link>
            </li>
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/da9181f93dd2e11c5d74cf685470408f10016.png">
                    <p>美团专送</p>
                </router-link>
            </li>
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/8b5e1702d4145ccf058ba5fb31008c5310912.png">
                    <p>午餐优选</p>
                </router-link>
            </li>
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/e54f1fe77b0588d2dfe82a12e424108a9450.png">
                    <p>甜点饮品</p>
                </router-link>
            </li>
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/2ec76f8f4f21a4ec163adc7fccfa1a399428.png">
                    <p>小吃馆</p>
                </router-link>
            </li>
            <li class="grid-item">
                <router-link to="/home/classify">
                    <img src="../../public/img/index/2eee7747fd143249b100b9fa5ee5e31d9873.png">
                    <p>家常菜</p>
                </router-link>
            </li>
        </ul>
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
    .grid-container{
        list-style: none;
        display: flex;
        flex-flow: row wrap;
        justify-content: space-around;
        background: #fff;
        margin-top: 0;
        width: 100%;
        padding-left: 0;
        padding-top: 20px;
        text-align: center;
    }
    .grid-container .grid-item{
        width: 25%;
    }
    .grid-container .grid-item img{
        width: 47px;
        height: 47px;
    }
    .grid-container .grid-item p{
        color: #2f2f2f;
    }

</style>
