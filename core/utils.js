// const jwt = require('jsonwebtoken')
// /**
//  * 
//  * @param {*} uid 
//  * @param {*} scope ：用来做用户权限
//  */
// const generateToken = function (uid, scope) {
//   const secretKey = global.config.security.secretKey
//   const expiresIn = global.config.security.expiresIn
//   /**
//    * 1.自定义信息
//    * 2.钥匙
//    * 3.可选的配置项
//    */
//   const token = jwt.sign({
//     uid,
//     scope
//   }, secretKey, {
//     expiresIn
//   })
//   return token
// }

// module.exports = {
//   generateToken
// }