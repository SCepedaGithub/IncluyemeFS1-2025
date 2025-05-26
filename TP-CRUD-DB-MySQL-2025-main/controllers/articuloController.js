const { Articulo, Categoria } = require('../models');

const articuloController = {
    list: async (req, res) =>{
        try {
            const articulos = await Articulo.findAll({ include: Categoria });
            res.render('articulos/list', { articulos });
          } catch (error) {
            res.status(500).send('Error al obtener los articulos');
          }
    },
      
    create: async (req, res) => {
          try {
            const categorias = await Categoria.findAll();
            res.render('articulos/create', { categorias });
          } catch (error) {
            res.status(500).send('Error al cargar el formulario de creación');
          }
    },
      
    store: async (req, res) => {
          const { nombre, precio, categoria_id } = req.body;
          const imagen = req.file ? req.file.filename : null;
          try {
            await Articulo.create({ nombre,  precio, imagen, categoria_id });
            res.redirect('/articulos');
          } catch (error) {
            res.status(500).send('Error al guardar el articulo');
          }
    },
      
    edit: async (req, res) => {
          const { id } = req.params;
          try {
            const articulo = await Articulo.findByPk(id);
            const categorias = await Categoria.findAll();
            res.render('articulos/edit', { articulo, categorias });
          } catch (error) {
            res.status(500).send('Error al cargar el formulario de edición');
          }
    },
      
    update: async (req, res) => {
          const { id } = req.params;
          const { nombre, precio, categoria_id } = req.body;
          const imagen = req.file ? req.file.filename : null;
          try {
            const articulo = await Articulo.findByPk(id);
            articulo.nombre = nombre;
            articulo.precio = precio;
            if (imagen) articulo.imagen = imagen;
            articulo.categoria_id = categoria_id;
            await articulo.save();
            res.redirect('/articulos');
          } catch (error) {
            res.status(500).send('Error al actualizar el articulo');
          }
    },
      
    destroy: async (req, res) => {
          const { id } = req.params;
          try {
            await Articulo.destroy({ where: { id } });
            res.redirect('/articulos');
          } catch (error) {
            res.status(500).send('Error al eliminar el articulo');
          }
    }
}
      
module.exports = articuloController;