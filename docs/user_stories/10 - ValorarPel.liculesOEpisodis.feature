Feature: Es vol tenir la possibilitat de valorar les pel·lícules o episodis de l’1 al 5.
    Només es podrà valorar un contingut digital que prèviament hagi estat marcat a la WatchedHistory.
    Un cop valorats tots el episodis d’una temporada, es calcularà la valoració de la temporada.
    Quan totes les temporades estiguin valorades, es calcularà automàticament la valoració final de la sèrie.

    # Criteri d'acceptació US10.1: L'usuari valora un contingut que ha vist
    @DataBaseData
    Scenario: Valorar un contingut que s'ha vist
        Given l'usuari "ajaleo@gmail.com" ha marcat com a vist el contingut "Breaking Bad"
        When l'usuari "ajaleo@gmail.com" valori el contingut "Breaking Bad" amb un 4
        Then el sistema mostrarà el missatge "Contingut valorat correctament"

    # Criteri d'acceptació US10.2: L'usuari valora un contingut que no ha vist
    @DataBaseData
    Scenario: Valorar un contingut que no s'ha vist
        Given l'usuari "ajaleo@gmail.com" no ha marcat com a vist el contingut "Breaking Bad"
        When l'usuari "ajaleo@gmail.com" valori el contingut "Breaking Bad" amb un 4
        Then el sistema mostrarà el missatge "No pots valorar un contingut que no has vist"


