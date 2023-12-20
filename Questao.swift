import Foundation

struct Questao{
     var titulo: String
     var respostas: [String]
     var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter? ", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?", respostas: ["2019", "2018", "2017"], respostaCorreta: 0),
    Questao(titulo: "Em \"Attack on Titan\", qual é o nome da cidade que os personagens tentam proteger dos Titãs?", respostas: ["Shiganshina", "Konohagakure", "Central City"], respostaCorreta: 0),
    Questao(titulo: "Qual é o nome da filha de Barry Allen e Iris West que viaja do futuro para se encontrar com eles?", respostas: ["Nora", "Paty", "Jesse"], respostaCorreta: 0)
]
