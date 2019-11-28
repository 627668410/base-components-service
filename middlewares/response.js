const {
  Response
} = require('../core/response')
const response = async (ctx, next) => {
  try {
    await next()
  } catch (error) {
    const isResponse = error instanceof Response
    if (isResponse) {
      ctx.body = {
        msg: error.msg,
        data: error.data,
        request: `${ctx.method} ${ctx.path}`
      }
      ctx.status = error.code
    } else {
      ctx.body = {
        msg: '报错了O(n _ n)O ~',
        request: `${ctx.method} ${ctx.path}`
      }
      ctx.status = 500
    }
  }
}
const getRes = () => {
  return response
}
module.exports = getRes