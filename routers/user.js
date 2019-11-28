const Router = require('koa-router')
const Passport = require('../middlewares/passport')
const User = require('../models/user')
const router = new Router({
  prefix: '/user'
})

router.post('/login', async (ctx, next) => {
  return Passport.authenticate('local', async function (err, user, info, status) {
    if (err) {
      throw new global.res.Response(err)
    } else {
      if (user) {
        const menus = await User.getMenus(user.id)
        const data = {
          menuRights: menus,
          username: user.username
        }
        throw new global.res.Success(data)
      } else {
        throw new global.res.ParameterException(info)
      }
    }
  })(ctx, next)
})

module.exports = router