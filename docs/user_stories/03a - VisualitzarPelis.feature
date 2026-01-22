Feature: 03a - Llistar el catàleg de pel·lícules
  Com a usuari/persona,
  Vull llistar totes les pel·lícules disponibles,
  Per veure els continguts de ShowTVTime.

  # Criteri d'acceptació US3a.1: ORDRE PER NOM
  @EmptyData
  Scenario: Llistar pel·lícules ordenades per nom
    Given les pel·lícules existents en el sistema són
      | Pel·lícula      | Data d'Estrena | Durada |
      | Barbie          | 2023           | 116    |
      | El Padrino      | 1972           | 175    |
      | El Padrino 2    | 1974           | 202    |
      | El Padrino 3    | 1990           | 162    |
      | Oppenheimer     | 2023           | 180    |
    When l'usuari demani el llistat de pel·lícules per nom
    Then el sistema llistarà les pel·lícules ordenades per nom
      | Barbie          |
      | El Padrino      |
      | El Padrino 2    |
      | El Padrino 3    |
      | Oppenheimer     |


  # Criteri d'acceptació US3a.2: ORDRE PER ANY D'ESTRENA
  @EmptyData
  Scenario: Llistar pel·lícules ordenades per any d'estrena
    Given les pel·lícules existents en el sistema són
      | Pel·lícula      | Data d'Estrena | Durada |
      | Barbie          | 2023           | 116    |
      | El Padrino      | 1972           | 175    |
      | El Padrino 2    | 1974           | 202    |
      | El Padrino 3    | 1990           | 162    |
      | Oppenheimer     | 2023           | 180    |
    When l'usuari demani el llistat de pel·lícules per any d'estrena
    Then el sistema llistarà les pel·lícules ordenades per any d'estrena
      | Barbie       |
      | Oppenheimer  |
      | El Padrino 3 |
      | El Padrino 2 |
      | El Padrino   |

  # Criteri d'acceptació US3a.3: Llistar pel·lícules per una temàtica
    @EmptyData
  Scenario: Llistar pel·lícules per una temàtica
    Given les temàtiques existents al sistema
      | Tematica  |
      | Sci-Fi    |
      | Action    |
      | Drama     |
      | Thriller  |
      | Fantasy   |
      | Comedy    |
    And les pel·lícules amb temàtica al sistema
      | Pel·lícula     | Descripció                                           | URL             | Data d'Estrena | Idioma  | durada | valoracio | Tematica |
      | Inception      | A thief who enters the subconscious of his targets   | URL_inception   | 2010           | English | 148    | 10        | Sci-Fi   |
      | Interstellar   | A journey through a wormhole near Saturn             | URL_interstellar| 2014           | English | 169    | 9.5f      | Sci-Fi   |
      | The Matrix     | A computer hacker learns about the nature of reality | URL_matrix      | 1999           | English | 136    | 9         | Sci-Fi   |
      | Avatar         | An epic science fiction film                         | URL_avatar      | 2009           | English | 162    | 8         | Sci-Fi   |
      | El Padrino     | The most known movie about the Mafia                 | URL_elPadrino   | 1972           | English | 215    | 10        | Drama    |
    When l'usuari demani el llistat de pel·lícules per la temàtica "Sci-Fi"
    Then el sistema llistarà les pel·lícules per la temàtica "Sci-Fi"
      | Avatar       |
      | Inception    |
      | Interstellar |
      | The Matrix   |

  @DataBaseData
  Scenario: Llistar pel·lícules de la base de dades ordenades per nom
    Given les pel·lícules existents en la base de dades
    When l'usuari demani el llistat de pel·lícules per nom
    Then el sistema llistarà les pel·lícules ordenades per nom
      | Avatar                |
      | Avengers: Endgame     |
      | Inception             |
      | Interstellar          |
      | Parasite              |
      | Shawshank Redemption  |
      | The Dark Knight       |
      | The Godfather         |
      | The Lion King         |
      | The Matrix            |
      | Titanic               |
