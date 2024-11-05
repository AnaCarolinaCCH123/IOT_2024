const express = requiere("express");
const app = express();
const port = 3000;

//Middleware para analizar JSON
app.use(express.jaosn());

//Ruta de ejemplo
app.get("/", (req, res) => {
  res.send("¡Hola mindo");
});

//Iniciar el servidor
app.listen(port, () => {});
