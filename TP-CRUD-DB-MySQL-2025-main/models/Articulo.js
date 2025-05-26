const {DataTypes} = require('sequelize');

const sequelize = require('../config/database');

// const Categoria = require('./Categoria');
const Categoria = require('./Categoria');

const Articulo = sequelize.define('Articulo', {
    nombre: {
        type: DataTypes.STRING,
        allowNull: false
    },
/*     descripcion:{
        type: DataTypes.TEXT
    }, */
    precio:{
         type: DataTypes.INTEGER,
        allowNull: false
    },
    imagen:{
        type: DataTypes.STRING,
    },
    categoria_id:{
       type: DataTypes.INTEGER,
       references:{
        model: 'categorias',
        key: 'id'
       } 
    }
},
    {
        tableName: 'articulos',
        timestamps: false
    });

    Articulo.belongsTo(Categoria, {foreignKey: 'categoria_id'});

    module.exports = Articulo;