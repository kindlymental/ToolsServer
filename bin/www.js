const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')

const app = express()

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())
app.use(cors())

var userRouter = require('../src/router/api')
app.use('/api', userRouter)

app.listen(3000, () => {
  console.log('Server is running at http://localhost:3000')
})

module.exports = app

