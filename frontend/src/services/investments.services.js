const PATH = "http://localhost:8080/investments";

const get_investments = async () => {
  try {
    const res = await fetch(PATH);
    return await res.json();
  } catch (err) {
    return { message: `error getting investments ${err}` };
  }
};

const get_clients_investments = async (client_id) => {
  try {
    const res = await fetch(`${PATH}/${client_id}`);
    return await res.json();
  } catch (err) {
    return { message: `error getting clients investments ${err}` };
  }
};

const investmentsServices = {
  get_investments,
  get_clients_investments,
};

export default investmentsServices;
