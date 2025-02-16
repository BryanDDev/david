
let resultado = "";
let i = 450;

do {
    // Obtener el resto de la división entre 2 (0 o 1)
    resultado = (i % 2) + resultado; // Concatenar el resto al principio de la cadena
    i = Math.floor(i / 2); // Dividir entre 2 y redondear hacia abajo
} while (i > 0);

console.log(resultado); // Imprimir el número en binario