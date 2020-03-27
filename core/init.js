const requireDirectory = require('require-directory')
const Router = require('koa-router')
class InitManager {
  static initCore(app) {
    InitManager.app = app
    InitManager.loadConfig()
    InitManager.initRouter()
    InitManager.initResponse()
    InitManager.initModel()
  }
  static loadConfig() {
    const path = '../config'
    const config = require(path)
    global.config = config
  }
  static initRouter(){
    requireDirectory(module,'../routers',{
      visit:whenLoadModule
    })
    function whenLoadModule(obj){
      if(obj instanceof Router){
        InitManager.app.use(obj.routes())
      }
    }
  }
  static initModel(){
    requireDirectory(module, '../models')
  }
  static initResponse(){
    const res = require('./response')
    global.res = res
  }
}
module.exports = {
  InitManager
}