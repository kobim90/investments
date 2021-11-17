const mysql = require('mysql2');
const dbConfig = require("../config/db.config")

const connect = async () => {
    try {
      const pool = await mysql.createPool({
        host: dbConfig.HOST,
        user: dbConfig.USER,
        password: dbConfig.PASSWORD,
        database: dbConfig.DB_NAME,
      });
      const promisePool = pool.promise();
      console.log("---Connected to DB!---");
      return promisePool;
    } catch (err) {
      console.log("Error connecting to DB", err);
    }
  };

  module.exports = connect;