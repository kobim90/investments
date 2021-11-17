const express = require("express");
const router = express.Router();
const controller = require("../controllers/clients.controller")

router.get("/", controller.get_clients)

module.exports =  router;