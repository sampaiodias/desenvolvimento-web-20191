import React, { Component } from "react";
import "./imc.css";

class Imc extends Component {
  constructor(props) {
    super(props);
    this.state = {
      altura: 1.7,
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
          <form>
            <label>
              Altura:
              <input
                name="altura"
                type="number"
                value={this.state.altura}
                onChange={this.handleInputChange}
              />
            </label>
            <label>
              Peso:
              <input
                name="peso"
                type="number"
                value={this.state.peso}
                onChange={this.handleInputChange}
              />
            </label>
          </form>
          <p />
          <span>Resultado: {this.calcular()}</span>
          <p /> <p />
          <img src={this.state.imageUrl} alt="" />
        </header>
      </div>
    );
  }

  calcular() {
    return (this.state.peso / (this.state.altura * this.state.altura)).toFixed(
      2
    );
  }

  handleInputChange(event) {
    const name = event.target.name;
    const value = event.target.value;
    this.setState({ [name]: value });
  }
}

export default Imc;
