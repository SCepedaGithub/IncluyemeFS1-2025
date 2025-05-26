const express = require('express');
const multer = require('multer');

const articuloController = require('../controllers/articuloController');

const router = express.Router();

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, 'public/images');
    },
    filename: (req, file, cb) => {
      cb(null, Date.now() + '-' + file.originalname);
    }
  });
  const upload = multer({ storage });
  
  
  router.get('/', (req, res) =>{
      res.render('home')
  });

  router.get('/articulos', articuloController.list);
  
  router.get('/articulos/create', articuloController.create);
  router.post('/articulos/create', upload.single('imagen'), articuloController.store);
  
  router.get('/articulos/:id/edit', articuloController.edit);
  router.put('/articulos/:id', upload.single('imagen'), articuloController.update);
  
  router.delete('/articulos/:id', articuloController.destroy);
  
  module.exports = router;