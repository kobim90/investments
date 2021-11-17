const connect = require("../utilities/db.connect");

const get_investments = async (req, res) => {
  try {
    const promisePool = await connect();
    console.log("connected at get_investments controller");
    const [results] = await promisePool.execute(
      "select * from investment_pool"
    );
    res.status(200).send({ data: results });
  } catch (err) {
    res.status(500).send({ message: `error getting investments ${err}` });
  }
};

const get_client_investments = async (req, res) => {
  try {
    const client_id = req.params.clientId;
    const promisePool = await connect();
    console.log("connected at get_client_investments controller");
    const [results] = await promisePool.execute(
      "select id, name from client_pool cp join investment_pool ip on cp.investment_pool_id=ip.id  where client_id = ?",
      [client_id]
    );
    res.status(200).send({ data: results });
  } catch (err) {
    res
      .status(500)
      .send({ message: `error getting clients investments ${err}` });
  }
};

module.exports = {
  get_investments,
  get_client_investments,
};
