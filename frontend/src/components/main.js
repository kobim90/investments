import { useState, useEffect, useRef } from "react";
import clientsServices from "../services/clients.services";
import investmentsServices from "../services/investments.services";
import storesServices from "../services/stores.services";
import Selector from "./selector";

const Main = () => {
  const [clients, setClients] = useState([]);
  const [investments, setInvestments] = useState([]);
  const [stores, setStores] = useState([]);

  const clientId = useRef();

  const getClients = async () => {
    const res = await clientsServices.get_clients();
    const data = res.data;
    setClients((prev) => [...data]);
  };

  const getInvestments = async () => {
    const res = await investmentsServices.get_investments();
    const data = res.data;
    setInvestments((prev) => [...data]);
  };

  const onClick_clients = async ({ target: { value: client_id } }) => {
    const res = await investmentsServices.get_clients_investments(client_id);
    clientId.current = client_id;
    const data = res.data;
    setInvestments((prev) => [...data]);
  };

  const onClick_investments = async ({ target: { value: investments_id } }) => {
    const res = await storesServices.get_clients_investments_stores(
      clientId.current,
      investments_id
    );
    const data = res.data;
    setStores((prev) => [...data]);
  };

  useEffect(() => {
    getClients();
    getInvestments();
  }, []);

  return (
    <div className="container">
      <Selector data={clients} name="client" handleClick={onClick_clients} />
      <Selector
        data={investments}
        name="investment"
        handleClick={onClick_investments}
      />
      {stores[0] && (
        <>
          <h3>Investment: {stores[0].amount_invested}$</h3>
          <ul className="list-group list-group-flush">
            {stores.map((store, index) => (
              <li className="list-group-item" key={`store ${index}`}>
                {store.name}
              </li>
            ))}
          </ul>
        </>
      )}
    </div>
  );
};

export default Main;
