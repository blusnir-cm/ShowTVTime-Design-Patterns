Feature: es vol poder llistar el Top 10 de películes més afegides a la WatchedHistory

  # Criteri d'acceptació US12.1: Llistar Top 10 pelis més afegides a la WatchedHistory
    @DataBaseData
        Scenario: Llistar Top 10 pelis més afegides a la WatchedHistory
            Given l'usuari "CapitaCC@gmail.com" vol veure el TOP 10 de pelicules
            When l'usuari accedeix al TOP 10 de pelicules més afegides
            Then el sistema mostrarà les pelicules

              |Inception                |
              |Interstellar             |
              |The Matrix               |
              |Shawshank Redemption     |
              |The Godfather            |
              |The Dark Knight          |
              |Avengers: Endgame        |
              |Avatar                   |
              |Titanic                  |
              |Parasite                 |



    # Criteri d'acceptació US12.2: Llistar Top 10 pelis menys afegides a la WatchedHistory
    @DataBaseData
        Scenario: Llistar Top 10 pelis menys afegides a la WatchedHistory
            Given l'usuari "CapitaCC@gmail.com" vol veure el TOP 10 de pelicules
             When l'usuari accedeix al TOP 10 de pelicules menys afegides
            Then el sistema mostrarà les pelicules

              |The Lion King            |
              |Parasite                 |
              |Titanic                  |
              |Avatar                   |
              |Avengers: Endgame        |
              |The Dark Knight          |
              |The Godfather            |
              |Shawshank Redemption     |
              |The Matrix               |
              |Interstellar             |