const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

var home = require('./routes/home');
var product = require('./routes/product');
var user = require('./routes/user');
var app = express();
app.use(cors({
    origin: 'http://localhost:8080',
    credentitals:true

}))
app.listen(5050,()=>{
    console.log("bug模式");
});


app.use(express.static(__dirname+"/public"));
app.use(bodyParser.urlencoded({
    extended:false
}));
app.use('/home',home);
app.use('/product',product);
app.use('/user',user);

