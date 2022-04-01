import { Table } from "react-bootstrap";


const Home = ()=>{
    return (
        <div>
            <h1>Welcome to the Doctors Office Project!</h1>
            <hr></hr>
            <h5>This is project meant to use Ruby on Rails Back-End and Javascript/ REACT JS Front-end, to present DATA using CRUD actions</h5>
            <hr></hr>
            <h6>Here is an example:</h6>
            <hr></hr>
            <Table striped bordered hover variant="dark">
                <thead>
                    <tr>
                    <th>#</th>
                    <th>Doctor Name:
                    </th>
                    <th>User Name:</th>
                    <th>Appointment Time</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>1</td>
                    <td>Dr. Adam Brooks</td>
                    <td>Randy Clements</td>
                    <td>10:45am</td>
                    </tr>
                    <tr>
                    <td>2</td>
                    <td>Dr. Roger Pyne</td>
                    <td>Diego Hernendez</td>
                    <td>11:45am</td>
                    </tr>
                    <tr>
                    <td>3</td>
                    <td>PA-C Mike Smith</td>
                    <td>Angelina Smith</td>
                    <td>11:30am</td>
                    </tr>
                </tbody>
            </Table>
        </div>
    )
}


export default Home