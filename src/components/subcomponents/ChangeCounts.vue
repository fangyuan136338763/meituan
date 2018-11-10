<template>
        <div class="app-changecounts">
            <img src="../../../public/img/icon/icon-subtract.png" class="counts-change" @click="subCount()" v-if="item.counts">
            <span class="counts" v-if="item.counts">{{item.counts}}</span>
            <img src="../../../public/img/icon/icon-add.png" class="counts-change" @click="addCount()">
        </div>
</template>

<script>
    export default {
        name: "ChangeCounts",
        data: function(){
            return {
            }
        },
        props: ['item'],
        methods: {
            addCount: function(){
                    this.item.counts++;
                    this.$store.commit('increment');
                    if(this.item.counts==1){
                        this.$root.bus.$emit('buttonToCart',this.item);
                    }
                    
            },
            subCount: function(){
                this.item.counts--;
                this.$store.commit('substract');
                if(this.item.counts==0){
                    this.$root.bus.$emit('buttonToCart',this.item);
                }
                
                
            },
            clearcart(res){
                if(res){
                    this.item.counts = 0;
                }
            }
        },
        created(){
            
        },
        mounted(){
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

