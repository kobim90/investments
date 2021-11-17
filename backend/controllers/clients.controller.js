const connect = require("../utilities/db.connect");

const get_clients = async (req, res) => {
  try {
    const promisePool = await connect();
    console.log("connected at get_clients controller");
    const [results] = await promisePool.execute("select * from clients");
    res.status(200).send({ data: results });
  } catch (err) {
    res.status(500).send({ message: `error getting clients ${err}` });
  }
};

module.exports = {
  get_clients,
};
