Feature: Visualitzar contingut digital que està per veure

  #Criteri d'acceptació US7.1: Visualitzar Watch Next
    @DataBaseData
    Scenario: Visualitzar Watch Next
        Given l'usuari  "ajaleo@gmail.com" ha començat a veure el contingut "The Office" i "Stranger Things"
        When l'usuari vol visualitzar el contingut que té per veure
        Then el sistema mostrarà el contingut que té per veure
            | The Office      |
            | Stranger Things |
    #Criteri d'acceptació US7.2: Visualitzar Watch Next en ordre segons la data d'estrena
    @DataBaseData
    Scenario: Visualitzar Watch Next en ordre segons la data d'estrena
        Given l'usuari  "ajaleo@gmail.com" ha començat a veure el contingut "The Office" i "Stranger Things"
        When l'usuari vol visualitzar el contingut que té per veure ordenat per data d'estrena
        Then el sistema mostrarà el contingut que té per veure ordenat per data d'estrena
            | Stranger Things |
            | The Office      |

        #Criteri d'acceptació US7.3: Visualitzar Watch Next en ordre segons la durada (ascendent)
    @DataBaseData
    Scenario: Visualitzar Watch Next en ordre segons la durada (ascendent)
        Given l'usuari  "ajaleo@gmail.com" ha començat a veure el contingut "Stranger Things" i "Game of Thrones"
        When l'usuari vol visualitzar el contingut que té per veure ordenat per durada
        Then el sistema mostrarà el contingut que té per veure ordenat per durada
            | Game of Thrones |
            | Stranger Things |
