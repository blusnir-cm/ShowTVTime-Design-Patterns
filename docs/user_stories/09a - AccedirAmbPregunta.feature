Feature: Es vol poder plantejar una pregunta del joc relacionada amb un grup d’interès,
  segons una tirada d'un dau de 4 cares (per decidir la categoria de la pregunta a contestar)
  i poder validar si l’usuari l’ha contestat bé o no.

  # Criteri d'acceptació US9a.1: L'usuari contesta correctament la pregunta
  @DataBaseData
    Scenario Outline: L'usuari contesta correctament la pregunta
        Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha fet una tirada de dau de quatre cares i ha sortit la cara <numero>
        When l'usuari contesta la pregunta a la pregunta de "<grup>" amb la resposta "<resposta>"
        Then el sistema mostrarà el missatge "Ara ets membre del grup"

      Examples:
        |nomUsuari                |grup          |numero |resposta|
        |nancyarg10@yahoo.com     |Anime         |  2    |Naruto  |
        |juancarlos999@gmail.com  |Superheroes   |  1    |Batman  |

    # Criteri d'acceptació US9a.2: L'usuari contesta incorrectament la pregunta
  @DataBaseData
    Scenario Outline: L'usuari contesta incorrectament la pregunta
        Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha fet una tirada de dau de quatre cares i ha sortit la cara <numero>
        When l'usuari contesta la pregunta a la pregunta de "<grup>" amb la resposta "<resposta>"
        Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

      Examples:
        |nomUsuari                |grup          |numero |resposta|
        |nancyarg10@yahoo.com     |Anime         |  2    |Sasuke  |
        |juancarlos999@gmail.com  |Superheroes   |  1    |Ironman |