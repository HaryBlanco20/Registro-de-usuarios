// pageObjects/registroPage.js

class RegistroPage{
    visit(url){
        cy.visit(url)
    }

    fillNombreCompleto(nombrecompleto){
        cy.get("#nombre").type(nombrecompleto)
    }
    fillEmail(email){
        cy.get("#email").type(email)
    }
    fillPassword(password){
        cy.get("#password").type(password)
    }
    
    clickSubmitButton(){
        cy.get('button[type="submit"]').click()
    }

    checkDuplicateEmailError() {
        cy.get('app-toast > .flex')
          .should('be.visible') 
          .then(($toast) => {
            const message = $toast.text().trim(); // Obtén el texto del mensaje de error
            if (message !== "Email inválido") {
              throw new Error(`La prueba falló. El sistema permitió registrar al usuario`); 
            }
          })
      }
           
    verifyMessage(mensajeEsperado){
        cy.contains(mensajeEsperado).should("be.visible")
    }
}
export default new RegistroPage;