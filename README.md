# Escolha sua propria aventura
Pequena aplicação para praticar conceitos de MVC

## Feature
- Apliquei novamente o uso de MVC separando as responsabilidades de cada camada
- Model manipulava os modelos e controller só chamava os modelos que deseja

``` swift

//
//  Story.swift
//  Chosse your adventure
//
//  Created by kenjimaeda on 18/07/22.
//

import Foundation

struct StoryModel {
	
	static	var title = story[0].title
	static	var choice1 = story[0].choice1
	static  var choice2 = story[0].choice2
	
	
	static let story = [
		StoryData(title: "Seu carro estourou um pneu em uma estrada sinuosa no meio do nada, sem sinal de celular. Você decide pegar carona. Uma caminhonete enferrujada para ao seu lado. Um homem com um chapéu de abas largas com olhos sem alma se abre a porta do passageiro para você e pergunta: 'Precisa de uma carona, garoto?'.", choice1: "Eu vou entrar. Obrigado pela ajuda!", choice2: "Melhor perguntar a ele se ele é um assassino primeiro.", choice1Destionation: 2, choice2Destionation: 1),
		StoryData(title:"Ele balança a cabeça lentamente, imperturbável com a pergunta.", choice1: "Pelo menos ele é honesto. Eu vou entrar.", choice2: "Espere, eu sei como trocar um pneu.", choice1Destionation: 2, choice2Destionation: 3),
		StoryData(title:"Quando você começa a dirigir, o estranho começa a falar sobre seu relacionamento com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro você encontra uma faca ensanguentada, dois dedos cortados e uma fita cassete. de Elton John. Ele pega o porta-luvas.", choice1: "Eu amo Elton John! Dê-lhe a fita cassete.", choice2: "É ele ou eu! Você pega a faca e esfaqueia ele.", choice1Destionation: 5, choice2Destionation: 4),
		StoryData(title:"O quê? Que tira! Você sabia que os acidentes de trânsito são a segunda principal causa de morte acidental para a maioria das faixas etárias adultas?", choice1: "E", choice2: "End", choice1Destionation: 0, choice2Destionation: 0),
		StoryData(title:"Enquanto você atravessa o guardrail e se inclina em direção às rochas irregulares abaixo, você reflete sobre a sabedoria duvidosa de esfaquear alguém enquanto eles estão dirigindo um carro em que você está.", choice1: "E", choice2:"End", choice1Destionation: 0, choice2Destionation: 0),
		StoryData(title: "Você se relaciona com o assassino enquanto canta versos de 'Can you feel the love hoje à noite'. Ele te deixa na próxima cidade. Antes de você ir, ele pergunta se você conhece algum lugar bom para despejar corpos. Você responde: 'Experimente o cais.", choice1: "E", choice2: "End", choice1Destionation: 0, choice2Destionation: 0)
	]
	
	func handleDestination1(_ choice: Int) -> Void {
		StoryModel.choice1 = StoryModel.story[choice].choice1
		StoryModel.choice2 = StoryModel.story[choice].choice2
		StoryModel.title = StoryModel.story[choice].title
	}
	
}





```
