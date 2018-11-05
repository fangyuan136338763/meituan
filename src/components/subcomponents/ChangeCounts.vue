<template>
        <div class="app-changecounts">
            <img src="../../../public/img/icon/icon-subtract.png" class="counts-change" @click="subCount()" v-if="!oneObj.counts==0">
            <span class="counts" v-if="!oneObj.counts==0">{{oneObj.counts}}</span>
            <img src="../../../public/img/icon/icon-add.png" class="counts-change" @click="addCount()">
        </div>
</template>

<script>
    export default {
        data: function(){
            return {
                oneObj: {
                    counts: 0
                }
            }
        },
        props: ["objProduct",'count','shopcartState','obj'],
        methods: {
            addCount: function(){
                    if(this.oneObj.counts){
                        this.oneObj.state = false;
                    }else{
                        this.oneObj.state = true;
                    }
                    this.oneObj.counts++;
                    this.$store.commit("increment");
                    
                    for(var key in this.objProduct){
                        this.oneObj[key] = this.objProduct[key];
                    }
                    this.$root.bus.$emit('buttonToCart',this.oneObj);
                    if(this.shopcartState){//购物车激活状态
                        this.obj.counts++;
                    }
            },
            subCount: function(){
                if(this.oneObj.counts==0){
                    return;
                }
                this.oneObj.counts--;
                this.$store.commit("substract");
                console.log(this.oneObj);
                // console.log(this.obj);
                if(this.oneObj.counts==0){
                    this.oneObj.state = false;
                }
                this.$root.bus.$emit('buttonToCart',this.oneObj);
                if(this.shopcartState){
                    this.obj.counts--;
                    console.log(this.obj);
                    if(this.obj.counts==0){
                        this.$root.bus.$emit('buttonToCart',this.obj);
                    }
                }
                
            },
            clearcart(res){
                console.log(res);
                if(res){
                    this.oneObj.counts = 0;
                }
            },
            getnewData(){
                if(this.count){
                    // console.log(this.count);
                    // console.log(this.oneObj.counts);
                    console.log(this.obj.counts);
                    // console.log(this.objProduct.counts);
                    this.oneObj.counts = this.count;
                }
            }
        },
        created(){
            
        },
        mounted(){
            this.getnewData();
            this.$root.bus.$on('clearCart',this.clearcart);
        }
    } 
</script>

<style scoped>
.counts-change {
  width: 24px;
  height: 25px;
  border-radius: 50%;
  vertical-align: middle;
}
.counts{
    padding: 0 5px;
}
</style>

