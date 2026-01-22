Feature: Es vol jugar les deu preguntes del quizz i
  calcular la puntuació final per saber si cal passar de ser Follower de grup a Member del grup.

  # Criteri d'acceptació US11.1: Jugar quizz complet i no entrar a grup
  @DataBaseData
    Scenario: Jugar quizz complet
        Given l'usuari "CapitaCC@gmail.com" a contestat les 10 preguntes del quizz del grup "Children’s TVs"
        When ha acertat 5 preguntes i ha fallat 5 preguntes
        Then el sistema mostrarà el missatge "No ets membre del grup, torna a jugar"

  # Criteri d'acceptació US11.2: Jugar quizz complet i entrar a grup
  @DataBaseData
    Scenario: Jugar quizz complet
        Given l'usuari "CapitaCC@gmail.com" a contestat les 10 preguntes del quizz del grup "Children’s TVs"
        When ha acertat 8 preguntes i ha fallat 2 preguntes
        Then el sistema mostrarà el missatge "Felicitats, ets membre del grup"