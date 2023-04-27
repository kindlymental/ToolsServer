const { exec } = require('../db/mysql')

//查询所有用户的sql
const userList = () => {
  const sql = `select * from user`
  return exec(sql).then((rows) => {
    return rows || {}
  })
}

module.exports = {
  userList,
}
