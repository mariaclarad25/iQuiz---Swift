//
//  Questao.swift
//  iQuiz
//
//  Created by Maria Clara Dias on 07/05/25.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}
    let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    
    Questao (titulo: "Quem interpretou Jack Sparrow na franquia Piratas do Caribe?", respostas: ["Johnny Depp", "Orlando Bloom", "Robert Downey Jr."], respostaCorreta: 0),
     
    Questao (titulo: "Qual personagem é digno de levantar o martelo Mjölnir em Vingadores Ultimato?", respostas: ["Doutor Estranho", "Capitão América", "Hulk"], respostaCorreta: 1),
    
    Questao(titulo: "Quem é a protagonista da saga Jogos Vorazes?", respostas: ["Katniss Everdeen", "Tris Prior", "Hermione Granger"], respostaCorreta: 0),
     
    Questao(titulo: "Em qual série o personagem Walter White se torna um traficante?", respostas: ["Ozark", "Breaking Bad", "Narcos"], respostaCorreta: 1),
    
    Questao(titulo: "Qual é o nome da escola de mutantes nos filmes dos X-Men?", respostas: ["Instituto Xavier", "Instituto Stark", "Escola dos Mutantes"], respostaCorreta: 0),
    
    Questao(titulo: "Quem é o vilão principal em Vingadores: Guerra Infinita?", respostas: ["Loki", "Ultron", "Thanos"], respostaCorreta: 2),
    
    Questao(titulo: "Quem é escolhido junto com Katniss no primeiro sorteio?", respostas: ["Gale Hawthorne", "Peeta Mellark", "Finnick Odair"], respostaCorreta: 1),
    
    Questao(titulo: "Em qual casa de Hogwarts Harry Potter foi selecionado?", respostas: ["Sonserina", "Corvinal", "Grifinória"], respostaCorreta: 2),
    
    Questao(titulo: "Qual é o nome da cidade onde Stranger Things se passa?", respostas: ["Hawkins", "Millfield", "Derry"], respostaCorreta: 0),
]

