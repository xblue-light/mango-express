const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello welcome to the root route!')
})

app.get('/colors', (req, res) => {
  res.send({data: [{id: 1, name: "pink"}, {id: 2, name: "orange"}, {id: 3, name: "gray"}]})
})

app.listen(port, () => {
  console.log(`Mango app listening on port ${port}`)
})