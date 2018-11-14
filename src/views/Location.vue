<template>
    <div class="location-page">
        <div class="header">
            <router-link to="/home">
                <img src="../../public/img/index/logo.42591fec.png">
            </router-link>
            <h4 class="title">选择城市</h4>
        </div>
        <p class="location">猜您当前位于：<span class="current">{{position}}</span></p>
        <div class="city-list">
            <div class="city-id" v-for="(item,index) in citys" :key="index">
                <div class="id">{{item.title}}</div>
                <ul class="city-item" v-for="(city,i) in item.lists" :key="i">
                    <li @click="changeLocation(city)"><a href="#" class="city">{{city}}</a></li>
                </ul>
            </div>
        </div>
        <div id="allmap"></div>
    </div>
</template>

<script>
export default {
  name:  "Location",
  data: function() {
    return {
      citys: [],
      position: ''
    };
  },
  methods: {
    getCitys: function() {
      this.$http.get("http://localhost:5050/home/location").then(({data}) => {
        console.log(data);
        for (var key in data.city) {
          this.citys.push(data.city[key]);
        }
        console.log(this.citys)
      });
    },
    getCurrentPoint: function () {
        var map = new BMap.Map("allmap");
        var point = new BMap.Point(116.331398,39.897445);
        map.centerAndZoom(point,12);
        var geolocation = new BMap.Geolocation();
        var geoc = new BMap.Geocoder();
        var that = this;
        geolocation.getCurrentPosition(function(r){
            if(this.getStatus() == BMAP_STATUS_SUCCESS){
                var pt = r.point;
                geoc.getLocation(pt,function(rs){
                    var addComp = rs.addressComponents;
                    // alert(addComp.city + '-' + addComp.province);
                    that.position = addComp.city + '-' + addComp.province;
                });
            }
        });
    },
    changeLocation(city){
      this.position = city;
    }
  },
  created() {
    this.getCitys();
  },
  mounted () {
      this.getCurrentPoint();
  }
};
</script>

<style scoped>
li{
    font-size: 14px;
}
.location-page {
  background: #fff;
}
.header {
  display: flex;
  padding: 5px 10px 0;
  border-bottom: 1px solid #ddd;
}
.header img {
  width: 34px;
  align-self: flex-start;
}
.header .title {
  width: 90%;
  margin: 0 10% 0 0;
  padding: 0;
  line-height: 37.5px;
  text-align: center;
}
.location {
  padding: 10px;
  color: #2f2f2f;
  margin: 0;
}
.location .current {
  color: #ffb100;
}
.city-list {
  padding-right: 10px;
}
.city-list .city-item {
  list-style: none;
  margin: 0;
  padding-left: 10px;
}
.city-list .city-item li {
  width: 100%;
  padding: 15px 0;
  border-bottom: 1px solid #ccc;
}
.city {
  color: #000;
}
.city-id .id {
  background: #eee;
  padding: 4px 0 4px 10px;
}
</style>
