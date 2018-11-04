<template>
        <div class="app-changecounts">
            <img src="../../../public/img/icon/icon-subtract.png" class="counts-change" @click="subCount()" v-if="!counts==0">
            <span class="counts" v-if="!counts==0">{{counts}}</span>
            <img src="../../../public/img/icon/icon-add.png" class="counts-change" @click="addCount()">
        </div>
</template>

<script>
    export default {
        data: function(){
            return {
                counts: 0,
            }
        },
        props: ["objProduct",'count','shopcartState','obj'],
        methods: {
            addCount: function(){
                    this.counts++;
                    this.$store.commit("increment");
                    if(!this.shopcartState){//购物车非激活状态
                        if(this.objProduct.counts){
                            this.objProduct.state = false;
                        }else{
                            this.objProduct.state = true;
                        }
                        this.objProduct.counts = this.counts;
                        this.$root.bus.$emit('buttonToCart',this.objProduct);
                    }
                    if(this.shopcartState){//购物车激活状态
                        this.obj.counts++;
                        console.log(this.obj.counts);
                    }
                    
            },
            subCount: function(){
                if(this.counts==0){
                    return;
                }
                this.counts--;
                this.$store.commit("substract");
                if(!this.shopcartState){
                    this.objProduct.counts = this.counts;
                    if(this.objProduct.counts==0){
                        this.objProduct.state = false;
                    }
                    this.$root.bus.$emit('buttonToCart',this.objProduct);
                    console.log(this.objProduct);
                }
                if(this.shopcartState){//购物车激活状态
                        this.obj.counts--;
                        console.log(this.obj.counts);
                }
            }
        },
        created(){
            if(this.count){
                this.counts = this.count;
                
            }
        },
        mounted(){
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

