<template>
    <div class="app-details-content">
        <div class="details-content">
            <div class="menu">
                <div class="left">
                    <div class="middle">
                        <ul class="left-menu" :style="'height:'+menus.length*61+'px'">
                            <li v-for="(item,i) in menus" :key="i" @click="choose(i)" :class="selected==i?'active':''"><div><span>{{item.title}}</span></div></li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <h5 class="right-title">热销</h5>
                    <ul class="product-list" v-for="(item,i) in menus" :key="i" v-if="selected==i">
                        <li class="list-item" v-for="item in contentList" :key="item.id">
                            <img :src="item.img" class="product-img">
                            <div class="list-content">
                                <h6 class="product-title">{{item.title}}</h6>
                                <span class="details">{{item.details}}</span>
                                <span class="zan">赞{{item.zan}}</span>
                                <div class="bottom">
                                    <span class="price">￥{{item.price}}</span>
                                    <tu-changecounts></tu-changecounts>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <tu-shopcart></tu-shopcart>
    </div>
</template>
<script>
import ChangeCounts from '../subcomponents/ChangeCounts.vue'
import ShopCart from '../ShopCart/ShopCart.vue'

export default {
  data: function() {
    return {
      menus: [],
      selected: 0,
      contentList: []
    };
  },
  methods: {
    getData: function() {
      this.$http.get("http://localhost:5050/details").then(res => {
        console.log(res);
        this.menus = res.data.menus;
        this.contentList = res.data.contents;
      });
    },
    getContentList(){
      this.$http.get("http://localhost:5050/details").then((res)=>{
        this.contentList = res.data.contents;
      });
    },
    choose: function(i) {
      this.selected = i;
      this.getContentList();
      console.log(i);
    }
  },
  created(){
      this.getData();
  },
  components: {
    "tu-changecounts": ChangeCounts,
    "tu-shopcart": ShopCart
  }
};
</script>

<style scoped>
.details-content {
  padding-top: 88px;
}
.details-content .menu .left {
  position: fixed;
  top: 87px;
  bottom: 0px;
  left: 0px;
  overflow: hidden;
  width: 90px;
}
.middle {
  position: absolute;
  top: 0;
  bottom: 51px;
  left: 0px;
  overflow-y: scroll;
  padding-right: 20px;
  width: 100px;
}
.details-content .menu .left li {
  width: 85px;
  height: 61px;
  background-color: #ddd;
  padding: 0 5px;
}
.details-content .menu .left li.active {
  background-color: #fff;
}
.details-content .menu .left li div {
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  border-bottom: 1px solid #bfbfbf;
}

.details-content .menu .left li span {
  text-align: center;
}
.right {
  margin-left: 90px;
  padding-bottom: 51px;
}
.right-title {
  height: 36px;
  font-weight: normal;
  line-height: 36px;
}
.right-title::before {
  content: "";
  display: inline-block;
  width: 2px;
  height: 10px;
  background-color: #fc6;
  margin-right: 3px;
}
.right .product-img {
  height: 62px;
  margin-right: 10px;
}
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
.details,
.list-content .zan {
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
.app-shop-cart{
  position: fixed;
  bottom: 0;
  width: 100%;
}
</style>

