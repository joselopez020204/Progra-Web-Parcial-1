const Empleado = require('../models/empleado');
const Proyectos = require('../models/proyectos'); 

const crear = async (req, res) => {
  const empleado = await Empleado.create(req.body);
  res.json(empleado);
};

const obtener = async (_req, res) => {
  const empleados = await Empleado.findAll({ where: { estado: 1 } });
  res.json(empleados);
};

const actualizar = async (req, res) => {
  const { id } = req.params;
  const empleado = await Empleado.findOne({
    where: { idEmpleado: id, estado: 1 }
  });

  if (!empleado) {
    return res.status(404).json({ error: 'Empleado no encontrado o inactivo' });
  }

  if (req.body.idProyecto !== undefined) {
    const proyecto = await Proyectos.findByPk(req.body.idProyecto);
    if (!proyecto) {
      return res.status(400).json({ error: 'idProyecto no existe' });
    }
  }

  await empleado.update(req.body);
  res.json(empleado);
};

const eliminar = async (req, res) => {
  const { id } = req.params;
  const empleado = await Empleado.findByPk(id);

  if (!empleado) {
    return res.status(404).json({ error: 'Empleado no encontrado' });
  }

  await empleado.update({ estado: 0 });
  res.json({ mensaje: 'Empleado eliminado' });
};

module.exports = {
  crear,
  obtener,
  actualizar,
  eliminar
};
