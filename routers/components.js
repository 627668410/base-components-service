const Router = require('koa-router')
const Table = require('../models/table')

const router = new Router({
  prefix: '/components'
})

router.get('/table', async (ctx) => {
  const { currentPage, pageSize } = ctx.query
  const list = await Table.getListByPage(parseInt(currentPage), parseInt(pageSize))
  const total = await Table.getCount(pageSize)
  throw new global.res.Success({
    list,
    ...total,
    currentPage,
    pageSize
  })
})

module.exports = router