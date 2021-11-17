const connect = require("../utilities/db.connect");

const get_client_stores = async (req, res) => {
  try {
    const data = req.params;
    const client_id = data.clientId;
    const investment_id = data.investmentId;

    const promisePool = await connect();
    console.log("connected at get_client_stores controller");
    const [results] = await promisePool.execute(
      "select amount_invested, s.name from stores s join client_pool cp on s.investment_pool_id=cp.investment_pool_id where client_id = ? and s.investment_pool_id = ?",
      [client_id, investment_id]
    );
    res.status(200).send({ data: results });
  } catch (err) {
    res.status(500).send({ message: `error getting stores ${err}` });
  }
};

module.exports = {
  get_client_stores,
};
