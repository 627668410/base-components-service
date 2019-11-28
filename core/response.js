class Response extends Error {
  constructor(msg, code) {
    super()
    this.code = code || 200
    this.msg = msg || 'OK'
  }
}
class ParameterException extends Response {
  constructor(msg, code) {
    super()
    this.code = code || 400
    this.msg = msg || '参数错误'
  }
}
class Success extends Response {
  constructor(data, msg, code) {
    super()
    this.code = code || 200
    this.msg = msg || 'ok'
    this.data = data || {}
  }
}
class AuthFailed extends Response {
  constructor(msg,code) {
    super()
    this.code = code || 401
    this.msg = msg || '授权失败'
  }
}
class NotFound extends Response{
  constructor(msg,code){
    super()
    this.code = code || 404
    this.msg = msg || '资源未找到'
  }
}
module.exports = {
  Response,
  ParameterException,
  Success,
  AuthFailed,
  NotFound
}