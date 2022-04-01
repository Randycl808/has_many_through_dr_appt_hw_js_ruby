import { Link, Outlet } from "react-router-dom";
import { Navbar, Container, Nav, NavDropdown } from "react-bootstrap";

function App() {
  return (
    <div>
      <nav
        // style={{
        //   padding: "0 20px",
        //   borderBottom: "1px solid",
        //   display: "flex",
        //   justifyContent: "space-between",
        //   alignItems: "center",
        // }}
      >
  
        <nav>
        <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
  <Container>
  <Navbar.Brand href="/home">Doctors Office</Navbar.Brand>
  <Navbar.Toggle aria-controls="responsive-navbar-nav" />
  <Navbar.Collapse id="responsive-navbar-nav">
    <Nav className="me-auto">
      <Nav.Link href="/home">Home</Nav.Link>
      <Nav.Link href="/about">About</Nav.Link>
      <NavDropdown title="Scheduling" id="collasible-nav-dropdown">
      <NavDropdown.Item><Link to='/doctors'>Doctors</Link></NavDropdown.Item>
      <NavDropdown.Item><Link to='/users'>Users</Link></NavDropdown.Item>
      <NavDropdown.Item><Link to='/appointments'>Appointments</Link></NavDropdown.Item>
      </NavDropdown>
    </Nav>
  </Navbar.Collapse>
  </Container>
</Navbar>
        </nav>
      </nav>
      <div
        style={{
          padding: "0 20px",
        }}
      >
        <Outlet />
      </div>
    </div>
  );
}

export default App;

