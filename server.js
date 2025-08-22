const express = require('express');
const cors = require('cors');
const { Sequelize } = require('sequelize');

const app = express();
const PORT = 3000;
app.use(cors());

const sequelize = new Sequelize('recursoshumanos', 'root', '', {
  host: '127.0.0.1',
  port: 3306,
  dialect: 'mysql',
  logging: false
});

module.exports = sequelize;

/*sequelize.authenticate()
  .then(() => console.log('Conexión a la base de datos establecida con éxito'))
  .catch(err => console.error('No se pudo conectar a la base de datos:', err));*/

const apiRoutes = require('./routes/index');

app.use(express.json());
apiRoutes(app);

app.get('/', (req, res) => {
  res.send('Funciona el servidor :D');
});



app.listen(PORT, () => {
  console.log(`Servidor iniciado en http://localhost:${PORT}`);
});