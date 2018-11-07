const express = require('express');
var pool = require('../pool');

var router = express.Router();
router.get('/detail',(req,res)=>{
    var $sid = req.query.sid;
    if(!$sid){return;};
    var obj = {};
    var progress = 0;
    var sql = 'select s.title as stitle,sm.* from shop_menu as sm inner join shop as s on sm.sid=s.sid where sm.sid=?';
    pool.query(sql,[$sid],(err,result)=>{
        if(err){throw err}
        obj.shopMenus = result;
        progress += 50;
        if(progress == 100){
            res.send(obj);
        }
    });
    var sql = 'select sm.title,p.* from product as p inner join shop_menu as sm on p.mid=sm.mid where p.sid=?';
    pool.query(sql,[$sid],(err,result)=>{
        if(err){throw err}
        obj.products = result;
        progress += 50;
        if(progress==100){
            res.send(obj);
        }
    });
})

router.get('/search',(req,res)=>{
    var $key = req.query.key;
    if(!$key){
        res.send({code: 301,msg: "key required"});
        return;
    }
    var sql = "select * from shop where title like '%";
    sql += $key + "%'";
    console.log(sql);
    pool.query(sql,(err,result)=>{
        if(err){throw err}
        if(result[0]){
            res.send(result);
        }else{
            res.send({code: 301, msg: '未查询到结果'});
        }
    });
})


module.exports = router;