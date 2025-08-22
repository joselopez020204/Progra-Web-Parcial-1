const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../server'); 

const Empleado = sequelize.define('Empleado', {
  idEmpleado: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  nombreEmpleado: {
    type: DataTypes.STRING(100),
    allowNull: false
  },
  apellidoEmpleado: {
    type: DataTypes.STRING(100),
    allowNull: false
  },
  fechaContratacion: {
    type: DataTypes.DATEONLY,
    allowNull: false
  },
  estado: {
    type: DataTypes.TINYINT,
    allowNull: false,
    defaultValue: 1
  },
    fechaNacimiento: {
    type: DataTypes.DATEONLY,
    allowNull: false
  },
  telefono: {
    type: DataTypes.STRING(15),
    allowNull: true
  },
correo: {
    type: DataTypes.STRING(100),
    allowNull: false,
    unique: true
  },
  idProyecto: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
}, {
  tableName: 'empleados',
  timestamps: true,
});

module.exports = Empleado;
