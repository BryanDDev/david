import React, { useEffect, useState } from 'react';
import './App.css';
import axios from 'axios';
import moment from 'moment-timezone';  // Importamos moment-timezone
import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from 'recharts';

function App() {
  const [data, setData] = useState([]);

  useEffect(() => {
    axios.get('http://localhost:5000/api/gbpusd')
      .then((response) => {
        if (response.data && response.data.values) {
          const formattedData = response.data.values
            .slice()
            .reverse() // Invertir el orden para que los datos más recientes estén al final
            .map(item => ({
              time: moment(item.datetime).tz("Europe/Madrid").format('HH:mm'), // Convertir a la hora de España
              open: parseFloat(item.open),
              high: parseFloat(item.high),
              low: parseFloat(item.low),
              close: parseFloat(item.close),
            }))
            .slice(-36); // Limitar a los últimos 36 puntos (3 horas si el intervalo es de 5 minutos)
          setData(formattedData);
        }
      })
      .catch((error) => {
        console.error('Error fetching data:', error);
      });
  }, []);

  return (
    <div className="App">
      <h1>Gráfico GBP/USD</h1>
      <ResponsiveContainer width="100%" height={600}>
        <LineChart data={data}>
          <CartesianGrid strokeDasharray=" 3" />
          <XAxis dataKey="time" />
          <YAxis domain={['dataMin - 1', 'dataMax +1']} /> {/* Ampliar el rango */}
          <Tooltip />
          <Legend />
          <Line type="basis" dataKey="close" stroke="#8884d8" />
          <Line type="basis" dataKey="open" stroke="#82ca9d" />
          <Line type="basis" dataKey="high" stroke="#ff7300" />
          <Line type="basis" dataKey="low" stroke="#ff0000" />
        </LineChart>
      </ResponsiveContainer>
    </div>
  );
}

export default App;
