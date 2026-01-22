Feature: es vol poder llistar el Top 10 de series més afegides a la WatchedHistory

  # Criteri d'acceptació US13.1: Llistar Top 10 series més afegides a la WatchedHistory
  @DataBaseData
  Scenario: Llistar Top 10 series més afegides a la WatchedHistory
    Given l'usuari "CapitaCC@gmail.com" vol veure el TOP 10 de series
    When l'usuari accedeix al TOP 10 de series més afegides
    Then el sistema mostrarà les series

      |Stranger Things                |
      |Game of Thrones                |
      |The Crown                      |
      |The Mandalorian                |
      |The Witcher                    |
      |Breaking Bad                   |
      |The Office                     |
      |Friends                        |
      |The Big Bang Theory            |
      |Chernobyl                      |



    # Criteri d'acceptació US13.2: Llistar Top 10 series menys afegides a la WatchedHistory
  @DataBaseData
  Scenario: Llistar Top 10 series menys afegides a la WatchedHistory
    Given l'usuari "CapitaCC@gmail.com" vol veure el TOP 10 de series
    When l'usuari accedeix al TOP 10 de series menys afegides
    Then el sistema mostrarà les series
      |Peaky Blinders                 |
      |Chernobyl                      |
      |The Big Bang Theory            |
      |Friends                        |
      |The Office                     |
      |Breaking Bad                   |
      |The Witcher                    |
      |The Mandalorian                |
      |The Crown                      |
      |Game of Thrones                |
