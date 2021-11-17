const express = require("express");
const cors = require("cors");
const app = express();

const clientsRoutes = require("./routes/clients.routes")
const investmentsRoutes = require("./routes/investments.routes")
const storeRoutes = require("./routes/stores.routes");

const corsOptions = {
    origin: "http://localhost:3000",
}

app.use(cors(corsOptions));
app.use(express.urlencoded({extended: true}));
app.use(express.json())

const PORT = process.env.PORT || 8080;

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
  });

app.use("/clients", clientsRoutes);
app.use("/investments", investmentsRoutes);
app.use("/stores", storeRoutes);
