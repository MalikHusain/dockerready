const express = require("express");
const app = express();
const PORT = 3002;

app.get("/", (req, res) => {
  res.send("<h1>Hola desde App2 🎉</h1>");
});

app.listen(PORT, () => {
  console.log(`App2 corriendo en http://localhost:${PORT}`);
});
