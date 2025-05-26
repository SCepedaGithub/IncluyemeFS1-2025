const {Sequelize} = require('sequelize');

const sequelize = new Sequelize('atuendos_encanto', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
    logging: false
});

module.exports = sequelize;