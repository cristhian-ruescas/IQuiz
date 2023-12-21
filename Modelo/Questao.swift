import Foundation

struct Question{
     var title: String
     var answers: [String]
     var rightAnswer: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter? ", answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], rightAnswer: 2),
    Question(title: "Em que ano Vingadores Ultimato foi lançado?", answers: ["2019", "2018", "2017"], rightAnswer: 0),
    Question(title: "Em \"Attack on Titan\", qual é o nome da cidade que os personagens tentam proteger dos Titãs?", answers: ["Shiganshina", "Konohagakure", "Central City"], rightAnswer: 0),
    Question(title: "Qual é o nome da filha de Barry Allen e Iris West que viaja do futuro para se encontrar com eles?", answers: ["Nora", "Paty", "Jesse"], rightAnswer: 0)
]
