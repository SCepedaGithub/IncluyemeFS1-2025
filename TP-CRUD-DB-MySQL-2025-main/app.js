const express = require('express');
const path = require('path');
const methodOverride = require('method-override');

const { sequelize } = require('./models');

const articuloRouter = require('./routes/articuloRouter');

const app = express();

app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.use(methodOverride('_method'));

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.use(express.static('public'));

app.use('/', articuloRouter);

app.listen(3100, async () =>{
    console.log("Servidor corriendo en el puerto 3100")
    try{
        await sequelize.authenticate();
        console.log("Base de dato conectada")
    }catch(error){
        console.log("Error al conectar la DB", error)
    }
});
