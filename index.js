const express    = require('express')

const app = express()
const port = 5003
const sys_name = "react v0"



app.use(express.urlencoded({extended: true}))
app.use(express.json())


const routes = {
  generic: require("./routes/generic")
}

app.use("*", routes.generic)


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
});
