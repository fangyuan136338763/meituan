<template>
    <div class="one-product">
        <li class="list-item" v-for="item in contentLists" :key="item.id">
            <img :src="item.img" class="product-img">
            <div class="list-content">
                <h6 class="product-title">{{item.ptitle}}</h6>
                <span class="details">{{item.details}}</span>
                <span class="zan">赞{{item.zan}}</span>
                <div class="bottom">
                    <span class="price">￥{{item.price}}</span>
                    <tu-changecounts :obj-product="{'id':item.pid,'title':item.ptitle,'price':item.price}"></tu-changecounts>
                </div>
            </div>
        </li>
    </div>
</template>

<script>
import ChangeCounts from '../subcomponents/ChangeCounts.vue'

export default {
    data: function(){
        return {
        }
    },
    props: ["contentLists"],
    components: {
        "tu-changecounts": ChangeCounts
    },
    methods: {
        
    },
    created(){
    },
    mounted(){
    }
}
</script>

<style scoped>
.list-item {
  display: flex;
  padding: 15px 0 10px;
  border-bottom: 1px solid #ddd;
}
.list-content {
  display: flex;
  flex-direction: column;
  width: 100%;
  padding-right: 10px;
}
.product-title {
  font-size: 16px;
  font-weight: normal;
  margin-bottom: 5px;
}
.list-content .zan,.details {
  font-size: 12px;
  color: #a9a9a9;
  margin-bottom: 5px;
}
.list-content .bottom {
  display: flex;
  justify-content: space-between;
}
.list-content .price {
  font-size: 18px;
  color: #fe4d3d;
  font-weight: 800;
}
.product-img{
    height: 62px;
    margin-right: 10px;
}
</style>
