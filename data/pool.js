const mysql = require('mysql');

var pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'meituan'
});

module.exports = pool;