Algoritmo "buscaValores"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Airan Possamai
// Descri��o   : Este algoritmo ler 10 n�meros inteiros e armazena-os em um vetor.
//               Depois busca um n�mero informado pelo usu�rio dentro desse
//               vetor.
// Autor(a)    : Anderson Mendes
// Data atual  : 10/05/2021
Var
// Se��o de Declara��es das vari�veis 
    num : vetor[0..9] de inteiro
    i, numPesquisa, qtVezesEncontrado : inteiro
    encontrou, continuar : logico
    resposta : caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

   continuar := verdadeiro

   // Ler os valores do usu�rio e armazenar no vetor:
   para i de 0 ate 9 faca
        Escreva("Informe um n�mero: ")
        leia(num[i])
   fimpara
   
   enquanto continuar = verdadeiro faca
      encontrou := falso
      qtVezesEncontrado := 0
      
      // Obtendo o n�mero de busca do usu�rio:
      Escreva("Informe um n�mero que voc� quer buscar na base de dados: ")
      leia(numPesquisa)

      // Procurar o n�mero de busca dentro do vetor:
      para i de 0 ate 9 faca
           // Se o valor da posi��o atual do vetor for igual ao n�mero de busca:
           se num[i] = numPesquisa entao
              escreval("O n�mero ", numPesquisa, " foi encontrado na linha ", i+1, " da base de dados")
              encontrou := verdadeiro
              qtVezesEncontrado := qtVezesEncontrado + 1
           fimse
      fimpara

      // Respondendo � busca do usu�rio:
      se encontrou = verdadeiro entao
         escreval("Ao todo, o valor foi encontrado em ", qtVezesEncontrado, " posi��es da base de dados!")
      senao
           escreval("O n�mero ", numPesquisa, " N�O existe na base de dados!")
      fimse

      // Verificar se o usu�rio deseja realizar uma noa consulta:
      escreva("Deseja pesquisar um outro n�mero? [SIM(s)/N�O(qualquer outra tecla)]: ")
      leia(resposta)
      
      // Se o usu�rio quer fazer uma nova pesquisa:
      se resposta = "s" entao
         continuar := verdadeiro
      senao
           continuar := falso
      fimse

      // Est�tica e organiza��o do conte�do apresentado ao usu�rio:
      escreval(" ")
      escreval("--------------------------------------------------------")
   fimenquanto
Fimalgoritmo