const express = require('express');
var pool = require('../pool');

var router = express.Router();

router.post('/register',(req,res)=>{
    var $phone = req.body.uphone;
    var $upwd = req.body.upwd;
    if(!$phone){res.send({code: 301,msg:"phone require"});return;}
    if(!$upwd){res.send({code: 302,msg:"password require"});return;}
    var sql = "INSERT INTO user VALUES(null,?,?)";
    pool.query(sql,[$phone,$upwd],(err,result)=>{
        if(err){throw err}
        console.log(result);
        if(result.affectedRows){
            res.send({code: 200,msg: "register success"});
        }
    });
});

module.exports = router;