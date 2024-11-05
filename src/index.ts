import dotenvFlow from "dotenv-flow";
import express from "express";
import studentRouter from "./routes/student";
import testRoutes from "./routes/test";
import unknownError from "./middlewares/unknown-error";
import unknownResource from "./middlewares/unknown-resource";
import validationError from "./middlewares/validation-error";

if (process.env.NODE_ENV !== "production") {
  dotenvFlow.config();
}
//Para poder acceder a las variables del ambiente (.env)
dotenvFlow.config();

const app = express();

// Middleware para parsear JSON
app.use(express.json());

app.use("/api/v1/student", studentRouter);

app.use("/error", testRoutes);
app.use(validationError);
app.use(unknownResource);
app.use(unknownError);

app.listen(process.env.SERVER_PORT, function () {
  console.log("Escuchando puerto " + process.env.SERVER_PORT);
});
