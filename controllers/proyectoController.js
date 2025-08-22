const Proyectos = require('../models/proyectos');
const Empleado = require('../models/empleado');

Proyectos.hasMany(Empleado, { foreignKey: 'idProyecto' });
Empleado.belongsTo(Proyectos, { foreignKey: 'idProyecto' });

const crear = async (req, res) => {
  const proyecto = await Proyectos.create(req.body); 
  res.json(proyecto);
};

const obtener = async (req, res) => {
  const { idProyecto } = req.query;

  const whereProyecto = { estado: 1 };
  if (idProyecto) whereProyecto.idProyecto = idProyecto;

  const proyectos = await Proyectos.findAll({
    where: whereProyecto,
    include: [
      {
        model: Empleado,
        where: { estado: 1 },
        required: false,
        attributes: ['idEmpleado', 'nombreEmpleado', 'apellidoEmpleado']
      }
    ],
    order: [['idProyecto', 'ASC']]
  });

  res.json(proyectos);
};


const actualizar = async (req, res) => {
  const { id } = req.params;

  if (req.body.progreso !== undefined) {
    const p = Number(req.body.progreso);
    if (isNaN(p) || p < 0 || p > 100) {
      return res.status(400).json({ error: 'progreso debe estar entre 0 y 100' });
    }
    if (p === 100) {
      req.body.estado = 0;
      if (req.body.fechaFin === undefined) {
        req.body.fechaFin = new Date().toISOString().slice(0, 10); 
      }
    }
  }

  const proyecto = await Proyectos.findOne({ where: { idProyecto: id, estado: 1 } });
  if (!proyecto) return res.status(404).json({ error: 'Proyecto no encontrado o inactivo' });

  await proyecto.update(req.body);
  res.json(proyecto);
};
module.exports = { crear, obtener, actualizar };
