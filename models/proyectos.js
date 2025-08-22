const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../server'); 

const Proyectos = sequelize.define('Proyectos', {
  idProyecto: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  nombreProyecto: {                          
    type: DataTypes.STRING(250),
    allowNull: false,
    unique: true
  },
  descripcionProyecto: {
    type: DataTypes.STRING(1000),             
  },
  fechaInicio: {
    type: DataTypes.DATEONLY,
    allowNull: false
  },
  progreso: {
    type: DataTypes.DECIMAL(5,2),           
    allowNull: false,
    defaultValue: 0.00,
    validate: {
      min: 0,
      max: 100
    }
  },
    fechaFin: {
    type: DataTypes.DATEONLY,
    allowNull: true
  },
  estado: {
    type: DataTypes.TINYINT,
    allowNull: false,
    defaultValue: 1
  }
}, {
  tableName: 'proyectos',
  timestamps: true,                       
});

module.exports = Proyectos;
