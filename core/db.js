const {
  Sequelize,
  Model
} = require('sequelize')
const {
  unset,
  clone,
  isArray
} = require('lodash')
const {
  dbName,
  host,
  port,
  user,
  password
} = require('../config').database

const sequelize = new Sequelize(dbName, user, password, {
  dialect: 'mysql', // 数据库类型
  host,
  port,
  logging: true, // 日志
  timezone: '+08:00', // 北京时间
  define: {
    timestamps: true,
    paranoid: true, // 不从数据库中删除数据，而只是增加一个 deletedAt 标识当前时间
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    deletedAt: 'deleted_at',
    underscored: true, // 驼峰转换成下划线
    freezeTableName: true, // 禁止修改表名
    scopes: {
      bh: {
        attributes: {
          exclude: ['updated_at', 'deleted_at', 'created_at']
        }
      }
    }
  }
})
// 同步模型到数据库
sequelize.sync({
  force: false // 设置为 true，会在创建表前先删除原表
})
// JSON.stringify的对象有toJSON方法，得到的是toJSON返回的对象
Model.prototype.toJSON = function () {
  // this指代model
  let data = clone(this.dataValues)
  unset(data, 'updated_at')
  unset(data, 'created_at')
  unset(data, 'deleted_at')
  for (key in data) {
    if (key === 'image') {
      if (!data[key].startsWith('http'))
        data[key] = global.config.host + data[key]
    }
  }
  if (this.exclude) {
    if (isArray(this.exclude)) {
      this.exclude.forEach(
        (value) => {
          unset(data, value)
        }
      )
    } else {
      console.error('---------------- exclude is not array------------------')
    }
  }
  return data
}
module.exports = {
  sequelize
}