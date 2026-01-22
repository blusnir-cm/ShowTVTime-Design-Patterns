Feature: Visualització del Historial Vist

# Criteri d'acceptació US6.1: Guardar el contingut vist
  @DataBaseData
  Scenario Outline: Guardar contingut vist
    Given l'usuari "<nomUsuari>" ha vist el contingut "<nom>"
    When l'usuari vol guardar el contingut vist
    Then el sistema mostrarà el missatge "Contingut afegit correctament"

    Examples:
      | nomUsuari                 | nom             |
      | ajaleo@gmail.com          | Stranger Things |
      | dtomacal@yahoo.cat        | The Witcher     |
      | heisenberg@gmail.com      | Game of Thrones |
      | ajaleo@gmail.com          | Inception       |
      | dtomacal@yahoo.cat        | The Matrix      |
      | heisenberg@gmail.com      | Interstellar    |

# Criteri d'acceptació US6.2: Eliminar el contingut vist
  @DataBaseData
  Scenario Outline: Guardar contingut vist
    Given l'usuari "<nomUsuari>" ha vist el contingut "<nom>"
    When l'usuari vol eliminar el contingut vist
    Then el sistema mostrarà el missatge "Contingut eliminat correctament"

    Examples:
      | nomUsuari                 | nom             |
      | ajaleo@gmail.com          | Stranger Things |
      | dtomacal@yahoo.cat        | The Witcher     |
      | heisenberg@gmail.com      | Game of Thrones |
      | ajaleo@gmail.com          | Inception       |
      | dtomacal@yahoo.cat        | The Matrix      |
      | heisenberg@gmail.com      | Interstellar    |


# Criteri d'acceptació US6.3: Llistar contingut vist
  @DataBaseData
  Scenario: Llistar contingut vist
    Given l'usuari  "ajaleo@gmail.com" només ha vist el contingut "The Office" i "Stranger Things"
    When l'usuari vol llistar el contingut vist
    Then el sistema mostrarà el contingut vist a la llista de continguts vistos
    | The Office      |
    | Stranger Things |



# Criteri d'acceptació US6.4: Llistar contingut vist ordenat per data
  @DataBaseData
  Scenario: Llistar contingut vist ordenat per data
    Given l'usuari  "ajaleo@gmail.com" només ha vist el contingut "The Office" i "Stranger Things"
    When l'usuari vol llistar el contingut vist ordenat per data de visualització
    Then el sistema mostrarà el contingut vist a la llista de continguts vistos ordenat per data de visualització
    | Stranger Things |
    | The Office      |

    # Criteri d'acceptació US6.5: Llistar contingut vist ordenat per durada (ascendent)
  @DataBaseData
    Scenario: Llistar contingut vist ordenat per durada (ascendent)
    Given l'usuari  "ajaleo@gmail.com" només ha vist el contingut "Stranger Things" i "Game of Thrones"
    When l'usuari vol llistar el contingut vist ordenat per durada de visualització
    Then el sistema mostrarà el contingut vist a la llista de continguts vistos ordenat per durada de visualització
    | Game of Thrones |
    | Stranger Things |



