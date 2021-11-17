const express = require("express");
const router = express.Router();
const controller = require("../controllers/investments.controller");

router.get("/", controller.get_investments);

router.get("/:clientId", controller.get_client_investments);

module.exports = router;
