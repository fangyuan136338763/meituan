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
                counts: 0
            }
        },
        props: ["objProduct",'count'],
        methods: {
            addCount: function(){
                if(this.objProduct){
                    this.counts++;
                    this.$store.commit("increment");
                    this.objProduct.counts = this.counts;
                    this.$root.bus.$emit('ee',this.objProduct);
                }
                if(this.count){
                    this.counts = this.count;
                }
                
            },
            subCount: function(){
                if(this.counts==0){
                    return;
                }
                this.counts--;
                this.$store.commit("substract");
            }
        },
        created(){
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

