const {
  Sequelize,
  Model
} = require('sequelize')
const {
  sequelize
} = require('../core/db')

class Table extends Model {
  static async getListByPage(currentPage, pageSize) {
    const list = await Table.findAndCountAll({
      limit: pageSize,
      offset: pageSize * (currentPage - 1)
    })
    return list.rows
  }
  static async getCount(pageSize) {
    const totalSize = await Table.count()
    const totalPage = Math.ceil(totalSize / pageSize)
    return {
      totalSize,
      totalPage
    }
  }
}

Table.init({
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  name: {
    type: Sequelize.STRING(64)
  },
  value: {
    type: Sequelize.STRING(64)
  }
}, {
  sequelize,
  tableName: 'table'
})

module.exports = Table