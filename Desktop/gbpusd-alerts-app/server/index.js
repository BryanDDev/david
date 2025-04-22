const express = require('express');
const axios = require('axios');
const cors = require('cors');
const moment = require('moment-timezone');  // Importamos moment-timezone
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());

// Ruta para obtener los datos con hora ajustada a España
app.get('/api/gbpusd', async (req, res) => {
  try {
    // Obtener la hora actual en España (zona horaria Europe/Madrid)
    const nowInSpain = moment().tz("Europe/Madrid").format();  // Hora en formato ISO en España

    // Llamar a la API de Twelve Data para obtener datos del par GBP/USD en el intervalo de 1 minuto
    const response = await axios.get(`https://api.twelvedata.com/time_series?symbol=GBP/USD&interval=min&apikey=${process.env.TWELVE_DATA_API_KEY}&end_date=${nowInSpain}`);

    // Enviar los datos obtenidos al frontend
    res.json(response.data);
  } catch (error) {
    console.error('Error al obtener los datos:', error.message);
    res.status(500).json({ error: 'Error al obtener los datos de la API externa' });
  }
});

// Ruta raíz opcional para verificar que el servidor está funcionando
app.get('/', (req, res) => {
  res.send('Servidor backend funcionando');
});

app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
