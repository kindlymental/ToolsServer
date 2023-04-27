const bodyParser = require('body-parser')
const cors = require('cors')
const mongoose = require('mongoose')

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())
app.use(cors())

const db = mongoose.connect('mongodb://localhost:27017/my-database', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})

const todoSchema = new mongoose.Schema({
  text: String,
  done: Boolean,
})

const Todo = mongoose.model('Todo', todoSchema)

app.get('/api/todo', async (req, res) => {
  const todos = await Todo.find()
  res.json(todos)
})

app.post('/api/todo', async (req, res) => {
  const todo = new Todo({
    text: req.body.text,
    done: false,
  })
  await todo.save()
  res.json(todo)
})