const PATH = "http://localhost:8080/clients";

const get_clients = async () => {
  try {
    const res = await fetch(PATH);
    return await res.json();
  } catch (err) {
    return { message: `error getting clients ${err}` };
  }
};

const clientsServices = {
  get_clients,
};

export default clientsServices;
