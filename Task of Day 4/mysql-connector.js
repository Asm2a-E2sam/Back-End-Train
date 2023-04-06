const mysql = require("mysql2");
require("dotenv").config();

const poolConnection = mysql.createPool({
    port: process.env.mysql_port,
    user: process.env.mysql_username,
    password: process.env.mysql_password,
    host: process.env.mysql_hostname,
    database: process.env.mysql_database
});

module.exports = poolConnection;