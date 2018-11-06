const express = require('express');
var pool = require('../pool.js');
var router = express.Router();


router.get('/grid',(req,res)=>{
    var sql = "SELECT fid,title,img FROM family";
    pool.query(sql,(err,result)=>{
        if(err){throw err}
        res.send(result);
    });
});

router.get('/classify',(req,res)=>{
    var $id = req.query.id;
    // console.log($id);
    if(!$id){return;}
    // var sql = "SELECT * FROM shop WHERE fid=?";
    var sql = "select f.title as ftitle,s.* from family as f inner join shop as s on f.fid=s.fid where s.fid=?"
    pool.query(sql,[$id],(err,result)=>{
        if(err){throw err}
        res.send(result);
    });
});

router.get('/',(req,res)=>{
    var sql = "select * from shop order by distance asc";
    pool.query(sql,(err,result)=>{
        if(err){throw err}
        res.send(result);
    });
})

module.exports = router;