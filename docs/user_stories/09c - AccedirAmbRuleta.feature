Feature: es vol poder accedir al grup d'interès amb una tirada de la ruleta

    # Criteri d'acceptació US9c.1: L'usuari accedeix correctament al grup
    @DataBaseData
    Scenario Outline: L'usuari accedeix correctament al grup
        Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha fet una tirada de la ruleta i ha sortit el número 3
        When l'usuari accedeix al grup "<grup>" pel mètode de la ruleta
        Then el sistema mostrarà el missatge "Ara ets membre del grup"

        Examples:
            |nomUsuari                |grup          |
            |nancyarg10@yahoo.com     |Anime         |
            |juancarlos999@gmail.com  |Superheroes   |


    # Criteri d'acceptació US9c.2: L'usuari no accedeix al grup
    @DataBaseData
    Scenario Outline: L'usuari no accedeix al grup
        Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha fet una tirada de la ruleta i ha sortit el número 1
        When l'usuari accedeix al grup "<grup>" pel mètode de la ruleta
        Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

        Examples:
            |nomUsuari                |grup          |
            |nancyarg10@yahoo.com     |Anime         |
            |juancarlos999@gmail.com  |Superheroes   |



    # Criteri d'acceptació US9c.3: L'usuari deixa de ser follower del grup
    @DataBaseData
    Scenario Outline: L'usuari deixa de ser follower del grup
        Given l'usuari "<nomUsuari>" que segueix el grup "<grup>" ha fet una tirada de la ruleta i ha sortit el número 2
        When l'usuari accedeix al grup "<grup>" pel mètode de la ruleta
        Then el sistema mostrarà el missatge "No s'ha pogut accedir al grup"

        Examples:
            |nomUsuari                |grup          |
            |nancyarg10@yahoo.com     |Anime         |
            |juancarlos999@gmail.com  |Superheroes   |