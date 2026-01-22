Feature: Es vol passar a ser membre d'un grup d'interés a través de punts de reputació aconseguits
  en valorar 10 continguts digitals

    # Criteri d'acceptació US9e.1: L'usuari accedeix correctament al grup
  @DataBaseData
    Scenario Outline: L'usuari accedeix correctament al grup
      Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha valorat els continguts
      |Contingut      |Valoracio|
      |Inception      |10       |
      |Interstellar   |9        |
      |The Matrix     |8        |
      |Avatar         |7        |
      |Parasite       |10       |
      |Stranger Things|9        |
      |The Crown      |8        |
      |The Witcher    |7        |
      |The Mandalorian|5        |
      |The Office     |6        |

      When l'usuari accedeix al grup "<grup>" pel mètode de punts
      Then el sistema mostrarà el missatge "Ara ets membre del grup"

      Examples:
        |nomUsuari                |grup          |
        |nancyarg10@yahoo.com     |Anime         |
        |juancarlos999@gmail.com  |Superheroes   |

    # Criteri d'acceptació US9e.2: L'usuari no accedeix al grup
  @DataBaseData
    Scenario Outline: L'usuari no accedeix al grup
      Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha valorat els continguts
      |Contingut      |Valoracio|
      |Inception      |10       |
      |Interstellar   |9        |
      |The Matrix     |8        |
      |Avatar         |7        |


      When l'usuari accedeix al grup "<grup>" pel mètode de punts
      Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

      Examples:
        |nomUsuari                |grup          |
        |nancyarg10@yahoo.com     |Anime         |
        |juancarlos999@gmail.com  |Superheroes   |
