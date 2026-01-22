Feature: Llistar episodis d'una temporada d'una sèrie
  Com a usuari,
  Vull llistar tots els episodis d'una temporada d'una sèrie,
  Per veure si tinc temps de veure la temporada sencera.

  # Criteri d'acceptació US5.1: La sèrie no existeix
  @EmptyData
  Scenario Outline: La sèrie no existeix en el sistema
    Given la sèrie "<nom>" no està present en el sistema
    And la temporada "<temporada>" no es troba perquè la sèrie no existeix
    When l'usuari demani el llistat d'episodis de la sèrie per la temporada "<temporada>"
    Then el sistema mostrarà el missatge "Aquesta sèrie no està disponible en el sistema"

    Examples:
      | nom              | temporada |
      | Stranger Things  | 7         |
      | The Witcher      | 2         |
      | Game of Thrones  | 5         |

  # Criteri d'acceptació US5.2: La temporada no existeix
  @DataBaseData
  Scenario Outline: La sèrie existeix però la temporada no està present
    Given que la sèrie "<nom>" té les seves temporades afegides però no la temporada "<temporada>"
    When l'usuari demani el llistat d'episodis de la sèrie per la temporada "<temporada>"
    Then el sistema mostrarà el missatge "Aquesta sèrie no té aquesta temporada"

    Examples:
      | nom              | temporada |
      | Stranger Things  | 9         |
      | The Crown        | 6         |
      | Breaking Bad     | 8         |

  # Criteri d'acceptació US5.3: La sèrie té la temporada amb episodis
  @EmptyData
  Scenario: La sèrie té la temporada amb episodis
    Given afegim la sèrie "Stranger Things" amb les seves temporades i episodis corresponents
    When l'usuari demani el llistat d'episodis de la sèrie per la temporada "1"
    Then el sistema mostrarà el llistat d'episodis de la temporada "1" ordenats per número d'episodi
      | Chapter One: The Vanishing of Will Byers |
      | Chapter Two: The Weirdo on Maple Street  |
      | Chapter Three: Holly, Jolly             |
      | Chapter Four: The Body                  |
      | Chapter Five: The Flea and the Acrobat  |
      | Chapter Six: The Monster                |
      | Chapter Seven: The Bathtub              |
      | Chapter Eight: The Upside Down          |