const {
  Sequelize,
  Model
} = require('sequelize')
const UserMenuMapping = require('./user-menu-mapping')
const Menu = require('./menu')
const {
  sequelize
} = require('../core/db')
class User extends Model {
  static async getMenus(userId) {
    const menuIds = await UserMenuMapping.getMenuIds(userId)
    const menus = await Menu.getMenusByIds(menuIds)
    const menuJSON =  Menu._getMenuJSON(menus)
    return menuJSON
  }
}

User.init({
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  username: {
    type: Sequelize.STRING(64),
    unique: true // 数据库的字段不可重复
  },
  password: {
    type: Sequelize.STRING(64)
  }
}, {
  sequelize,
  tableName: 'user'
})

module.exports = User