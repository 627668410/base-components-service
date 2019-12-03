const {
  Sequelize,
  Model
} = require('sequelize')
const {
  sequelize
} = require('../core/db')

class Echart extends Model {
  static async getBar() {
    const data = await Echart.findAll({
      where: {
        date: '19.01'
      }
    })
    return data
  }
  static async getLine() {
    let data = {}
    const dates = await Echart.findAll({
      group: 'date',
      attributes: ['date']
    })
    // const dates = await sequelize.query('select distinct date from echart')
    data = Echart._getList(data, dates, 0)
    return data
  }
  static async _getList(data, dates, i) {
    const date = dates[i].date
    const list = await Echart.findAll({
      where: {
        date
      }
    })
    data[date] = list
    i++
    if (i < dates.length) {
      data = Echart._getList(data, dates, i)
    }
    return data
  }
}

Echart.init({
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  name: {
    type: Sequelize.STRING(64)
  },
  price: {
    type: Sequelize.BIGINT
  },
  date: {
    type: Sequelize.STRING(64)
  },
  ratio: {
    type: Sequelize.FLOAT
  }
}, {
  sequelize,
  tableName: 'echart'
})

module.exports = Echart