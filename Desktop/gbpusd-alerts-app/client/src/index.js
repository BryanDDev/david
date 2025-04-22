import React from 'react';
import ReactDOM from 'react-dom/client'; // Cambia la importación
import './index.css';
import App from './App';

// Crear el "root" de la aplicación con React 18
const root = ReactDOM.createRoot(document.getElementById('root'));

// Usar el método render para renderizar el componente
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
