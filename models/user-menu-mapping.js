// const bcrypt = require('bcrypt')
const {
  Sequelize,
  Model
} = require('sequelize')
const {
  sequelize
} = require('../core/db')
class UserMenuMapping extends Model {
  static async getMenuIds(userId){
    const menuMappings = await UserMenuMapping.findAll({
      where: {
        userId
      }
    })

    const menuIds = []
    menuMappings.forEach(menuMapping => {
      menuIds.push(menuMapping.menuId)
    })
    return menuIds
  }
}

UserMenuMapping.init({
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  userId: {
    type: Sequelize.INTEGER
  },
  menuId: {
    type: Sequelize.INTEGER
  }
}, {
  sequelize,
  tableName: 'user_menu_mapping'
})

module.exports = UserMenuMapping