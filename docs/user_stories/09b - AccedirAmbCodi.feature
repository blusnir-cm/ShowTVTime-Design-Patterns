Feature: Es vol poder accedir a ser membre d'un grup d'interes amb un codi secret

  # Criteri d'acceptació US9b.1: L'usuari accedeix correctament al grup
  @DataBaseData
    Scenario Outline: L'usuari accedeix correctament al grup
        Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha introduït el codi "<codi>"
        When l'usuari accedeix al grup "<grup>" pel mètode del codi
        Then el sistema mostrarà el missatge "Ara ets membre del grup"

      Examples:
        |nomUsuari                |grup          |codi              |
        |nancyarg10@yahoo.com     |Anime         |AnimeFan          |
        |juancarlos999@gmail.com  |Superheroes   |CodigoSuperheroes |

    # Criteri d'acceptació US9b.2: L'usuari no accedeix al grup
  @DataBaseData
    Scenario Outline: L'usuari no accedeix al grup
        Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha introduït el codi "<codi>"
        When l'usuari accedeix al grup "<grup>" pel mètode del codi
        Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

      Examples:
        |nomUsuari                |grup          |codi              |
        |nancyarg10@yahoo.com     |Anime         |Animefan          |
        |juancarlos999@gmail.com  |Superheroes   |AnimeFan          |