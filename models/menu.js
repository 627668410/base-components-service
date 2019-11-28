const {
  Sequelize,
  Model,
  Op
} = require('sequelize')
const { cloneDeep } = require('lodash')
const {
  sequelize
} = require('../core/db')
class Menu extends Model {
  static async getMenusByIds(menuIds) {
    //  找出id符合条件的
    const menus = await Menu.findAll({
      where: {
        id: {
          [Op.in]: menuIds
        }
      },
      order: [['parentId', 'ASC']]
    })
    return menus
  }
  static _getMenuJSON(menus) {
    const menuArr = []
    const menuChildren = []
    menus.forEach(menu => {
      const newMenu = cloneDeep(menu.toJSON())
      if (newMenu.parentId === 0) {
        menuArr.push(newMenu)
      } else {
        menuChildren.push(newMenu)
      }
    })
    Menu._menuChild(menuArr, menuChildren)
    return menuArr
  }
  // 递归拼接JSON
  static _menuChild(parents, children) {
    parents.forEach(parent => {
      const parentChildren = children.filter(child => child.parentId === parent.id)
      parent.children = parentChildren
      if (parentChildren.length > 0) {
        this._menuChild(parentChildren, children)
      }
    })
  }
}

Menu.init({
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  parentId: {
    type: Sequelize.INTEGER
  },
  name: {
    type: Sequelize.STRING(64)
  },
  type: {
    type: Sequelize.INTEGER
  },
  sequence: {
    type: Sequelize.INTEGER
  },
  value: {
    type: Sequelize.STRING(64)
  }
}, {
  sequelize,
  tableName: 'menu_right'
})
module.exports = Menu