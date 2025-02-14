import {Given , When, Then, And} from "cypress-cucumber-preprocessor/steps"
import RegistroPage from "../pageObjects/RegistroPage"; // Importamos el Page Object

Given("el usuario se encuentra en la página de registro {string}", (url) => {
  RegistroPage.visit(url)
})

When("el usuario ingresa {string} en el campo {string}", (inputValue, fieldName) => {
  if(fieldName === "Email"){
    RegistroPage.fillEmail(inputValue)
  }else if (fieldName === "Nombre Completo"){
    RegistroPage.fillNombreCompleto(inputValue)
  }else if(fieldName === "Contraseña"){
    RegistroPage.fillPassword(inputValue)
  }
})

And("el usuario hace clic en el botón {string}", () => {
  RegistroPage.clickSubmitButton()
})

Then("se muestra el siguiente mensaje {string}", (mensajeEsperado) => {
  RegistroPage.verifyMessage(mensajeEsperado)
})

When("el usuario no ingresa nada en el campo {string}", (fieldName)=>{
  if(fieldName === "Email"){
    RegistroPage.clearEmail();
  }else if (fieldName === "Nombre Completo"){
    RegistroPage.clearNombreCompleto();
  }else if(fieldName === "Contraseña"){
    RegistroPage.clearPassword()
  }
})
//Pausa después de cada escenario
afterEach(() => {
  cy.wait(1200)
})