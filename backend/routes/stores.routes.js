const express = require("express");
const router = express.Router();
const controller = require("../controllers/stores.controller");

router.get("/:clientId/:investmentId", controller.get_client_stores);

module.exports = router;
