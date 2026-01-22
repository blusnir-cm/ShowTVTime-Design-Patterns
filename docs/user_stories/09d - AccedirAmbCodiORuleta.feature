Feature: es vol donar la possibilitat a un follower d'escollir entre accedir a un grup d'interès amb una tirada de la
  ruleta o bé amb un codi secret

    # Criteri d'acceptació US9d.1: L'usuari accedeix correctament al grup
  @DataBaseData
  Scenario Outline: L'usuari accedeix correctament al grup
    Given l'usuari "<nomUsuari>" vol accedir al grup "<grup>" pel mètode de "codi"
    When l'usuari accedeix al grup "<grup>" amb el codi "<codi>"
    Then el sistema mostrarà el missatge "Ara ets membre del grup"

    Examples:
      |nomUsuari                |grup          |codi              |
      |nancyarg10@yahoo.com     |Anime         |AnimeFan          |
      |juancarlos999@gmail.com  |Superheroes   |CodigoSuperheroes |

    # Criteri d'acceptació US9d.2: L'usuari no accedeix al grup
  @DataBaseData
  Scenario Outline: L'usuari no accedeix al grup
    Given l'usuari "<nomUsuari>" vol accedir al grup "<grup>" pel mètode de "codi"
    When l'usuari accedeix al grup "<grup>" amb el codi "<codi>"
    Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

    Examples:
      |nomUsuari                |grup          |codi              |
      |nancyarg10@yahoo.com     |Anime         |Animefan          |
      |juancarlos999@gmail.com  |Superheroes   |AnimeFan          |


    # Criteri d'acceptació US9d.3: L'usuari accedeix correctament al grup
  @DataBaseData
  Scenario Outline: L'usuari accedeix correctament al grup
    Given l'usuari "<nomUsuari>" vol accedir al grup "<grup>" pel mètode de "ruleta"
    When l'usuari accedeix al grup "<grup>" i li surt el número 3
    Then el sistema mostrarà el missatge "Ara ets membre del grup"

    Examples:
      |nomUsuari                |grup          |
      |nancyarg10@yahoo.com     |Anime         |
      |juancarlos999@gmail.com  |Superheroes   |


    # Criteri d'acceptació US9d.4: L'usuari no accedeix al grup
  @DataBaseData
  Scenario Outline: L'usuari no accedeix al grup
    Given l'usuari "<nomUsuari>" vol accedir al grup "<grup>" pel mètode de "ruleta"
    When l'usuari accedeix al grup "<grup>" i li surt el número 1
    Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

    Examples:
      |nomUsuari                |grup          |
      |nancyarg10@yahoo.com     |Anime         |
      |juancarlos999@gmail.com  |Superheroes   |



    # Criteri d'acceptació US9d.5: L'usuari deixa de ser follower del grup
  @DataBaseData
  Scenario Outline: L'usuari deixa de ser follower del grup
    Given l'usuari "<nomUsuari>" vol accedir al grup "<grup>" pel mètode de "ruleta"
    When l'usuari accedeix al grup "<grup>" i li surt el número 2
    Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

    Examples:
      |nomUsuari                |grup          |
      |nancyarg10@yahoo.com     |Anime         |
      |juancarlos999@gmail.com  |Superheroes   |