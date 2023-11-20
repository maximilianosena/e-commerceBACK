const express = require("express");
const mariadb = require("mariadb");

const pool = mariadb.createPool({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "ecommerce",
  connectionLimit: 5,
});


const cors = require ("cors")
const jwt = require("jsonwebtoken");
const SECRET_KEY = "claveEcommerce";
const app = express();
const port = 5500;

app.use(express.json());
app.use(cors());

app.get("/", (req, res) => {
    res.send("<h1>Este es el servidor</h1>");
  });



  

app.post("/login", async (req, res) => {
  const { accessEmail, password } = req.body;

  let login = await pool.query('SELECT accessEmail, password FROM usermail ORDER BY 1 ASC LIMIT 1')
console.log(login[0])
  if (accessEmail === login[0].accessEmail && password === login[0].password) {
    const token = jwt.sign({ accessEmail}, SECRET_KEY);
    res.status(200).json({ token });
  } else {
    res.status(401).json({ message: "Usuario y/o contraseña incorrecto" });
  }
});


app.use("/user_cart", (req, res, next) => {
  try {
    const decoded = jwt.verify(req.headers["access-token"], SECRET_KEY);
    console.log(decoded);
    next();
  } catch (err) {
    res.status(401).json({ message: "Usuario no autorizado" });
  }
});

const eCommerceRouter = require("./routes/ecommerceRoutes");
  app.use("/", eCommerceRouter);



app.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}`);
  });