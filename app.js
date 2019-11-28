// 别名
require('module-alias/register')
const Koa = require('koa')
const cors = require('koa-cors')
const parser = require('koa-bodyparser')
const path = require('path')
const static = require('koa-static')
const getRes = require('./middlewares/response')
const passport = require('./middlewares/passport')
const { InitManager } = require('./core/init')

const host = 'localhost'
const port = 3000

const app = new Koa()
app.use(cors())
app.use(parser())

app.use(passport.initialize())
app.use(passport.session())

app.use(getRes())
app.use(static(path.join(__dirname, './static')))
InitManager.initCore(app)
app.listen(port, host)