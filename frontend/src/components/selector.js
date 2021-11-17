
const Selector = ({data, handleClick, name}) => {

    return (
        <select className="form-select mb-4 mt-4" onClick={handleClick}>
        <option defaultValue>Select {name}</option>
        {
            data.map( (val, index) => 
                (<option value={val.id} key={`client ${index}`} >{val.name}</option>)
            )
        }
      </select>
    );
}

export default Selector;