Feature: 01 - Registre Persona
  Com a usuari no enregistrat
  Vull registrar-me a l'aplicació amb les dades corresponents
  Per a ser client de ShowTVTime i accedir als continguts de l’aplicació

  @DataBaseData
  Scenario: Identificador de persona (correu) ja existent
    Given la persona existent amb correu "ajaleo@gmail.com"
    When intento registrar-me amb el correu "ajaleo@gmail.com"
    Then el sistema mostrarà el missatge "Persona ja existent en el Sistema"

    @DataBaseData
  Scenario: Contrassenya no segura
    Given no hi ha cap usuari registrat amb el correu "nouusuari@domini.com"
    When intento registrar-me amb el correu "nouusuari@domini.com" i una contrasenya "werty"
    Then el sistema mostrarà el missatge "Contrasenya no prou segura"

      @DataBaseData
  Scenario: Contrassenya segura
    Given no hi ha cap usuari registrat amb el correu "nouusuari@domini.com"
    When vull posar una contrasenya "Qwertyuiop9"
    Then el sistema mostrarà el missatge "Contrasenya segura"

    @DataBaseData
  Scenario: Correu electrònic no vàlid
    Given no hi ha cap usuari registrat amb el correu "ajaleonougmail.com"
    When intento registrar-me amb el correu "ajaleonougmail.com" i una contrasenya "ValidPass123"
    Then el sistema mostrarà el missatge "Correu en format incorrecte"

    Given no hi ha cap usuari registrat amb el correu "ajaleonou@gmailcom"
    When intento registrar-me amb el correu "ajaleonou@gmailcom" i una contrasenya "ValidPass123"
    Then el sistema mostrarà el missatge "Correu en format incorrecte"

      @DataBaseData
  Scenario Outline: Registres múltiples com exemples de tests, pensant que ja hi han usuaris enregistrats en el sistem
    Given no hi ha cap usuari registrat amb el correu "<persona>"
    And existeix ja l'usuari "ajaleo@gmail.com" al sistema
    When intento registrar-me amb el correu "<persona>" i una contrasenya "<contrasenya>"
    Then el sistema mostrarà el missatge "<resultat>"

    Examples:
      | persona                | contrasenya    | resultat               |
      | ajaleonew@gmail.com    | 12wreTry       | Registre vàlid         |
      | pepito@domini.cat      | qwerfrdsE1     | Registre vàlid         |
      | ajaleo@gmail.com       | qwerfrdsE1     | Persona ja existent en el Sistema |
      | pepitonew@domini.cat   | qwert          | Contrasenya no prou segura      |