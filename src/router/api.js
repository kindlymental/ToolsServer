const express = require('express')
const { success, fail } = require('../model/resModel')
const { userList } = require('../controller/user')
const { newsList } = require('../controller/news')
const { homeList } = require('../controller/home')

const api = express.Router()

api.get('/userlist', async (req, res) => {
  const result = await userList()
  res.send(success('', result))
})

api.get('/home', async (req, res) => {
  const result = await homeList()
  res.send(success('', result))
})

module.exports = api
