const express = require('express');
var pool = require('../pool');

var router = express.Router();

router.post('/register',(req,res)=>{
    var $phone = req.body.uphone;
    var $upwd = req.body.upwd;
    if(!$phone){
        res.send({code: 301,msg:"phone require"});
        return;
    }
    if(!$upwd){
        res.send({code: 302,msg:"password require"});
        return;
    }
    var sql = "INSERT INTO user VALUES(null,?,?)";
    pool.query(sql,[$phone,$upwd],(err,result)=>{
        if(err){throw err}
        console.log(result);
        if(result.affectedRows){
            res.send({code: 200,msg: "register success"});
        }
    });
});

router.get('/checkphone',(req,res)=>{
    var $uphone = req.query.uphone;
    if(!$uphone){
        res.send({code: 403,msg: "uphone require"});
        return;
    }
    var sql = "SELECT * FROM user WHERE uphone=?";
    pool.query(sql,[$uphone],(err,result)=>{
        if(err){throw err}
        console.log(result);
        if(result[0]){
            res.send({code: 401,msg: "手机号码已注册"});
        }
    });
});

router.post('/login',(req,res)=>{
    var $uphone = req.body.uphone;
    var $upwd = req.body.upwd;
    if(!$uphone){
        res.send({code: 403,msg:"uphone require"});
        return;
    }
    if(!$upwd){
        res.send({code: 402,msg: "upwd require"});
        return;
    }
    var sql = "SELECT * FROM user WHERE uphone=? AND upwd=?";
    pool.query(sql,[$uphone,$upwd],(err,result)=>{
        if(err){throw err}
        if(result[0]){
            res.send({code:200,msg: "login success",id: result[0].uid});
        }else{
            res.send({code: 301,msg: "登录失败"});
        }
    });
});

router.post('/order',(req,res)=>{
    var obj = req.body;
    console.log(obj);
    var sql = "INSERT INTO user_order set ?";
    pool.query(sql,obj,(err,result)=>{
        if(err){throw err}
        if(result.affectedRows){
            res.send({code: 200,msg: "pay success"});
        }
    });

});

module.exports = router;