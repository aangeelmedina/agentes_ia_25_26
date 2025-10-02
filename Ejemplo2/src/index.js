// Importaciones
import dotenv from "dotenv";

// Cargo las variables .env a este fichero
dotenv.config();
// Todas la variables estan en process.env.Nombre_de_la_Variable

// mostrar por consola el valor de las variables de entorno

console.log("URL de acceso: ",process.env.URL);
console.log("Puerto: ",process.env.PORT);
console.log(`URL con Puerto: ${process.env.URL}: ${process.env.PORT}`);

