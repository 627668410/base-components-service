const Router = require('koa-router')
const Echarts = require('../models/echarts')

const router = new Router({
  prefix: '/echarts'
})

router.get('/bar', async (ctx) => {
  const data = await Echarts.getBar()
  throw new global.res.Success(data)
})

router.get('/line', async (ctx) => {
  const data = await Echarts.getLine()
  throw new global.res.Success(data)
})

router.get('/stack', async (ctx) => {
  const data = await Echarts.getLine()
  throw new global.res.Success(data)
})

router.get('/map', async (ctx) => {
  const data = await Echarts.getLine()
  throw new global.res.Success(data)
})
module.exports = router