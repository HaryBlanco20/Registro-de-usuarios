Feature: Registro de Usuario
    Scenario: Registro exitoso con datos válidos
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "miregistro@prueba.com" en el campo "Email"
    And el usuario ingresa "Ismael Ruiz" en el campo "Nombre Completo"
    And el usuario ingresa "Contraseña123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "¡Registro exitoso!"

    Scenario: Registro con una contraseña de menos de 8 caracteres 
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "sonia@prueba.com" en el campo "Email"
    And el usuario ingresa "Sonia Chacon" en el campo "Nombre Completo"
    And el usuario ingresa "Con12" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "La contraseña debe tener al menos 8 caracteres"

    Scenario: Registro con una contraseña sin mayúsculas
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "pedro@prueba.com" en el campo "Email"
    And el usuario ingresa "Pedro Garcia" en el campo "Nombre Completo"
    And el usuario ingresa "contraseña123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "La contraseña debe tener al menos una letra mayúscula"

    Scenario: Registro con una contraseña sin minúsculas
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "jose@prueba.com" en el campo "Email"
    And el usuario ingresa "Jose Camacho" en el campo "Nombre Completo"
    And el usuario ingresa "CONTRASEÑA123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "La contraseña debe tener al menos una letra minúscula"

    Scenario: Registro con una contraseña sin números
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "camilo@prueba.com" en el campo "Email"
    And el usuario ingresa "Camilo Bermudez" en el campo "Nombre Completo" 
    And el usuario ingresa "Contraseña" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "La contraseña debe tener al menos un número"

    Scenario: Registro con un correo sin dominio
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "jorge@.com" en el campo "Email"
    And el usuario ingresa "Jorge Prado" en el campo "Nombre Completo"
    And el usuario ingresa "Contraseña123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "Ingrese un correo válido"

    Scenario: Registro con un correo sin el caracter "@"
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "sofia.com" en el campo "Email"
    And el usuario ingresa "Sofía Gomez" en el campo "Nombre Completo"
    And el usuario ingresa "Contraseña123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "Ingrese un correo válido"

    Scenario: Registro con un correo sin extension válida
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "monica@pruebas" en el campo "Email"
    And el usuario ingresa "Monica Lorenzo" en el campo "Nombre Completo"
    And el usuario ingresa "Contraseña123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "Ingrese un correo válido"

    Scenario: Registro con caracteres inválido en el correo
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "miregistro=()¿@pruebas.com" en el campo "Email"
    And el usuario ingresa "Ismael Ruiz" en el campo "Nombre Completo"
    And el usuario ingresa "Contraseña123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then se muestra el siguiente mensaje "Ingrese un correo válido"

    Scenario: Registro sin ingresar nombre
    Given el usuario se encuentra en la página de registro "http://127.0.0.1:5501/formulario_registro/index.html"
    When el usuario ingresa "carlos@pruebas.com" en el campo "Email"
    And el usuario no ingresa nada en el campo "Nombre completo"
    And el usuario ingresa "Contraseña123" en el campo "Contraseña"
    And el usuario hace clic en el botón "Registrarse"
    Then el sistema muestra el siguiente mensaje "El campo Nombre Completo es obligatorio"

