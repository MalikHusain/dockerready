const express = require("express");
const app = express();
const PORT = 3001;

app.get("/", (req, res) => {
  res.send("<h1>Hola desde App1 🚀</h1>");
});

app.listen(PORT, () => {
  console.log(`App1 corriendo en http://localhost:${PORT}`);
});
