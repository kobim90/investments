const PATH = "http://localhost:8080/stores";

const get_clients_investments_stores = async (client_id, investment_Id) => {
  try {
    const res = await fetch(`${PATH}/${client_id}/${investment_Id}`);
    return await res.json();
  } catch (err) {
    return { message: `error getting clients investments stores ${err}` };
  }
};

const storesServices = {
  get_clients_investments_stores,
};

export default storesServices;
