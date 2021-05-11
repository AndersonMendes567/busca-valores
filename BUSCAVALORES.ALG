Algoritmo "buscaValores"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Airan Possamai
// Descrição   : Este algoritmo ler 10 números inteiros e armazena-os em um vetor.
//               Depois busca um número informado pelo usuário dentro desse
//               vetor.
// Autor(a)    : Anderson Mendes
// Data atual  : 10/05/2021
Var
// Seção de Declarações das variáveis 
    num : vetor[0..9] de inteiro
    i, numPesquisa, qtVezesEncontrado : inteiro
    encontrou, continuar : logico
    resposta : caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   continuar := verdadeiro

   // Ler os valores do usuário e armazenar no vetor:
   para i de 0 ate 9 faca
        Escreva("Informe um número: ")
        leia(num[i])
   fimpara
   
   enquanto continuar = verdadeiro faca
      encontrou := falso
      qtVezesEncontrado := 0
      
      // Obtendo o número de busca do usuário:
      Escreva("Informe um número que você quer buscar na base de dados: ")
      leia(numPesquisa)

      // Procurar o número de busca dentro do vetor:
      para i de 0 ate 9 faca
           // Se o valor da posição atual do vetor for igual ao número de busca:
           se num[i] = numPesquisa entao
              escreval("O número ", numPesquisa, " foi encontrado na linha ", i+1, " da base de dados")
              encontrou := verdadeiro
              qtVezesEncontrado := qtVezesEncontrado + 1
           fimse
      fimpara

      // Respondendo à busca do usuário:
      se encontrou = verdadeiro entao
         escreval("Ao todo, o valor foi encontrado em ", qtVezesEncontrado, " posições da base de dados!")
      senao
           escreval("O número ", numPesquisa, " NÃO existe na base de dados!")
      fimse

      // Verificar se o usuário deseja realizar uma noa consulta:
      escreva("Deseja pesquisar um outro número? [SIM(s)/NÃO(qualquer outra tecla)]: ")
      leia(resposta)
      
      // Se o usuário quer fazer uma nova pesquisa:
      se resposta = "s" entao
         continuar := verdadeiro
      senao
           continuar := falso
      fimse

      // Estética e organização do conteúdo apresentado ao usuário:
      escreval(" ")
      escreval("--------------------------------------------------------")
   fimenquanto
Fimalgoritmo