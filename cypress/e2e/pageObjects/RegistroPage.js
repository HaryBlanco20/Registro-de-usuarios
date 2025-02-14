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
          
    verifyMessage(mensajeEsperado){
        cy.contains(mensajeEsperado).should("be.visible")
    }
}
export default new RegistroPage;