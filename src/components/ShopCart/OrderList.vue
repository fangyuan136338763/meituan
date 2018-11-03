<template>
    <div class="app-orderlist">
        <span class="title">{{item.title}}</span>
        <div class="right">
            <span class="price">￥{{item.price}}</span>
            <tu-changecounts :count="item.counts"></tu-changecounts>
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
    props: ['item'],
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
    .app-orderlist{
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
