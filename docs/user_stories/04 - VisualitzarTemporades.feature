Feature: Llistar temporades d'una sèrie
  Com a usuari,
  Vull llistar totes les temporades d'una sèrie,
  Per veure si tinc temps de veure-la sencera.

  # Criteri d'acceptació US4.1: La sèrie no existeix
  @EmptyData
  Scenario: La sèrie no existeix en el sistema
    Given que la sèrie "Stranger Things" no existeix en el sistema
    When l'usuari demani el llistat de temporades de la sèrie
    Then el sistema mostrarà el missatge "Aquesta sèrie no està disponible en el sistema"

  # Criteri d'acceptació US4.2: La sèrie no té temporades
  @EmptyData
  Scenario Outline: La sèrie no té temporades afegides
    Given la sèrie "<nom>" existeix en el sistema sense temporades
    When l'usuari demani el llistat de temporades de la sèrie
    Then el sistema mostrarà el missatge "Aquesta sèrie no té temporades"

    Examples:
      | nom              |
      | Stranger Things  |
      | The Crown        |
      | Breaking Bad     |

  # Criteri d'acceptació US4.3: La sèrie té temporades i es poden mostrar bé
  @DataBaseData
  Scenario: La sèrie té temporades afegides
    Given es té la sèrie "Stranger Things" amb les seves temporades corresponents
    When l'usuari demani el llistat de temporades de la sèrie
    Then el sistema mostrarà el llistat de temporades ordenat per número de temporada
      | 1  |
      | 2  |
      | 3  |
      | 4  |
      | 5  |