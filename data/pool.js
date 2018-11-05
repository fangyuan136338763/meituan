const mysql = require('mysql');

var pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    passrod: '',
    database: 'meituan'
});

module.exports = pool;