const { exec } = require('../db/mysql')

//查询所有沸点
const newsList = () => {
  const sql = `select * from news ORDER BY id ASC`
  return exec(sql).then((rows) => {
    return rows || {}
  })
}

//查询所有关键词
const wordsList = () => {
  const sql = `select * from news_words ORDER BY id ASC`
  return exec(sql).then((rows) => {
    return rows || {}
  })
}

module.exports = {
  newsList,
  wordsList,
}
