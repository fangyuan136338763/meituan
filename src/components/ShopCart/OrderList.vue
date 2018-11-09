<template>
    <div class="app-orderlist">
        <div class="orderlist">
            <span class="title">{{item.ptitle}}</span>
            <div class="right">
                <span class="price">￥{{item.price}}</span>
                <tu-changecounts :item="item"></tu-changecounts>
            </div>
        </div>
    </div>
</template>

<script>
import ChangeCounts from '../subcomponents/ChangeCounts.vue'
export default {
    data: function(){
        return {
        }
    },
    props: ['item','cartState'],
    methods: {
       
    },
    created: function(){
    },
    mounted: function(){
    },
    components: {
        'tu-changecounts': ChangeCounts
    }
};
</script>

<style scoped>
    .orderlist{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        padding: 10px;
    }
    .title{
        width: 170px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .right{
        display: flex;
        width: 140px;
        justify-content: space-between;
        align-items: center;
    }
    .price{
        font-size: 16px;
    }
</style>
