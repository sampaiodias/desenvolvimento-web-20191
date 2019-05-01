import React, { Component } from "react";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import "./imc.css";

class Imc extends Component {
  constructor(props) {
    super(props);
    this.state = {
      altura: 170,
      peso: 70,
      imageUrl: "https://i.imgur.com/uhnhOQb.jpg"
    };
    this.handleInputChange = this.handleInputChange.bind(this);
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1>Índice de Massa Corporal</h1>
          <p />
          <Form onChange={e => this.handleInputChange(e)}>
            <Row>
              <Col>
                <Form.Group controlId="altura">
                  <Form.Label>Altura (cm)</Form.Label>
                  <Form.Control
                    type="number"
                    placeholder="Altura (centímetros)"
                    defaultValue={this.state.altura}
                  />
                </Form.Group>
              </Col>
              <Col>
                <Form.Group controlId="peso">
                  <Form.Label>Peso (kg)</Form.Label>
                  <Form.Control
                    type="number"
                    placeholder="Peso (Kilos)"
                    defaultValue={this.state.peso}
                  />
                </Form.Group>
              </Col>
            </Row>
          </Form>
          <p />
          <span>Resultado: {this.calcular()}</span>
          <p /> <p />
          <img src={this.state.imageUrl} alt="" />
        </header>
      </div>
    );
  }

  calcular() {
    return (
      this.state.peso /
      ((this.state.altura / 100) * (this.state.altura / 100))
    ).toFixed(2);
  }

  handleInputChange(event) {
    const name = event.target.id;
    const value = event.target.value;
    this.setState({ [name]: value });
  }
}

export default Imc;
