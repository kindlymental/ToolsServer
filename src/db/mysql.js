var mysql = require('mysql')

const MYSQL_CONF = {
  host: 'localhost', //域名
  user: 'root', //用户
  password: '123456', //密码
  database: 'tools_db', //数据库的名称
}

var conn
function connection() {
  var db = mysql.createConnection(MYSQL_CONF)
  db.connect((err) => {
    if (err) {
      console.log("数据库连接失败", err.message);
      return;
    }
  })
  db.on('error', (err) => {
    if (err.code === 'PROTOCOL_CONNECTION_LOST') {
      connection()
    } else {
      throw err
    }
  })
  conn = db
}

function exec(sql, params) {
  connection()
  return new Promise((resolve, reject) => {
    conn.query(sql, params, (err, rows) => {
      if (err) {
        return reject(err)
      }
      resolve(rows)
    })
  })
}

function close() {
  return new Promise((resolve, reject) => {
    conn &&
      conn.end((err) => {
        if (err) {
          return reject(err)
        }
        resolve()
      })
  })
}
module.exports = {
  exec,
}
