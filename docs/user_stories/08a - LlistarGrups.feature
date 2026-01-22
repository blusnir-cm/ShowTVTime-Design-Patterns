Feature: 08a - Llistar grups
  Com a usuari/persona,
  Vull llistar tots els grups d'interès,
  Per veure si en trobo algun que m'interessi.

  # Criteri d'acceptació US8a.1: ORDRE PER NOM
  @EmptyData
  Scenario: Llistar grups d'interès per nom
    Given els grups d'interès en el sistema següents
      | Grup d'interes      | Descripcio  |
      | Anime               | Un espai per als apassionats de l'anime! Comparteix teories, recomanacions i moments èpics dels teus animes favorits, amb bon humor i una dosi de passió.|
      | Reality TV          | Aquí parlem de tot el que passa en el món del reality! Des de drames hilarants fins a moments ridículs, comparteix les teves opinions i riu amb nosaltres! |
      | Superheroes         | Un grup per als que no poden resistir-se a debatre sobre qui és el millor superheroi. Comparteix històries, còmics i teories sobre l'univers dels superherois! |
      | Children’s TVs      | Un lloc per recordar els nostres dibuixos animats preferits! Compartim riures i records sobre sèries que ens van fer créixer i que encara ens fan somriure. |

    When el usuari demani el llistat de grups d'interès per nom
    Then el sistema llistarà els grups ordenats per nom
      | Anime           |
      | Children’s TVs  |
      | Reality TV      |
      | Superheroes     |


  # Criteri d'acceptació US3a.2: les sèries associades a un grup d'interès
    @EmptyData
  Scenario: Llistar sèries d'un grup d'interès per nom
    Given el grup "AccioExtrema" existent en el sistema
    And el grup "AccioExtrema" té interès en les sèries
      | Series          |
      | Mandalorian     |
      | The Witcher     |
      | The Boys        |
    When el usuari demani les sèries del grup "AccioExtrema"
    Then el sistema llistarà sèries del grup ordenades per nom
      | Mandalorian     |
      | The Boys        |
      | The Witcher     |
