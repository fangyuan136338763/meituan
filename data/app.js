const express = require('express');
const cors = require('cors');
var home = require('./routes/home');
var product = require('./routes/product');
var app = express();
app.use(cors({
    origin: 'http://localhost:8080',
    credentitals:true

}))
app.listen(5050,()=>{
    console.log("bug模式");
});


app.use(express.static(__dirname+"/public"));
app.use('/home',home);
app.use('/product',product);

