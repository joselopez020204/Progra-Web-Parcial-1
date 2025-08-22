const { Router } = require('express');
const empleadoController = require('../controllers/empleadoController');
const proyectoController = require('../controllers/proyectoController');

const router = Router();

module.exports = (app) => {
  app.use('/api', router);
  router.post('/empleados/crear', empleadoController.crear);
  router.get('/empleados/obtener', empleadoController.obtener);
  router.put('/empleados/actualizar/:id', empleadoController.actualizar);
  router.put('/empleados/eliminar/:id', empleadoController.eliminar);

  router.get('/proyectos/obtener', proyectoController.obtener);
  router.post('/proyectos/crear', proyectoController.crear);
  router.put('/proyectos/actualizar/:id', proyectoController.actualizar);

};