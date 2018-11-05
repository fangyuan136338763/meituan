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

module.exports = router;