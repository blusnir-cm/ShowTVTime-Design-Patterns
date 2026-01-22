Feature: 02 - Login de Client
  Com a persona enregistrada a l'app ShowTVTime
  Vull iniciar la sessió del meu compte
  Per tal d'accedir a les utilitats de l'aplicació

  @DataBaseData
  Scenario: Contrasenya errònia
    Given un usuari amb correu "ajaleo@gmail.com" i contrasenya "INVENTADA11"
    When intento iniciar sessió amb el correu "ajaleo@gmail.com" i la contrasenya "INVENTADA11"
    Then el sistema mostrarà el missatge "Contrasenya incorrecta"

  @DataBaseData
  Scenario: Correu inexistent
    Given un usuari amb correu "gatigos@gmail.com" i contrasenya "INVENTADA11"
    When intento iniciar sessió amb el correu "gatigos@gmail.com" i la contrasenya "INVENTADA11"
    Then el sistema mostrarà el missatge "Correu inexistent"

  Scenario: Recuperar contrasenya
    Given un usuari amb correu "ajaleo@gmail.com"
    When demana recuperar la contrasenya pel correu "ajaleo@gmail.com"
    Then el sistema mostrarà el missatge "ajaleoPassw7"

  @DataBaseData
  Scenario Outline: Validar login amb diversos usuaris
    Given un usuari amb correu "<user>" i contrasenya "<password>"
    When intento iniciar sessió amb el correu "<user>" i la contrasenya "<password>"
    Then el sistema mostrarà el missatge "<expectedResult>"

    Examples:
      | user                 | password     | expectedResult    |
      | ajaleo@gmail.com     | ajaleoPassw7 | Login correcte    |
      | dtomacal@yahoo.cat   | Qwertyft5    | Login correcte    |
      | inventat@yahoo.cat   | INVENTADA11  | Correu inexistent |