// const Sequelize = require('sequelize');

const sequelize = require('../config/database');

const Articulo = require('./Articulo');
const Categoria = require('./Categoria');

Categoria.hasMany(Articulo, {foreignKey: 'categoria_id', as: 'motos'});
Articulo.belongsTo(Categoria, {foreignKey: 'categoria_id', as: 'categoria'});

module.exports = {
    sequelize,
    Articulo,
    Categoria
};