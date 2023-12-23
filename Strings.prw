#INCLUDE "Protheus.ch"


/*/(Protheus.doc) ManipulaÃ§Ã£o de Strings
FunÃ§Ã£o : Analista de Sistemas
@author Kassio B.
Since 21/12/2023
@version 12 superior
/*/

User Function Strings()

    Local cTexto1   := ""
    Local cTexto2   := ""
    Local cResp     := ""
    Local cHTML     := ""
    Local nAt       := 0
    Local nRat      := 0
    Local lResp     :=.T.
    Local nResp     := 0
    Local aResp     := {}


    // Concatenar 2 textos
    cTexto1     := "Kassio Batista, "
    cTexto2     := "Analista Protheus/ADVPL"
    cResp       := cTexto1 + cTexto2

    // Concatenar textos na mesma variavel com quebra de linha
    cResp     := "Teste de texto com quebra de linha" + CRLF
    cResp     += "Teste de texto com quebra de linha" + CRLF
    cResp     += "Teste de texto com quebra de linha" + CRLF
    cResp     += "Teste de texto com quebra de linha" + CRLF
    cResp     += "Teste de texto com quebra de linha" + CRLF
    cResp     += "Teste de texto com quebra de linha" + CRLF


    // Remover espaÃ§os a direita e/ou a esquerda do texto
    cTexto1     := "     Texto com espaÃ§os     "
    cResp       := LTRIM(cTexto1) //Remove espaÃ§os a esquerda
    cResp       := RTRIM(cTexto1) //Remove espaÃ§os a direita
    cResp       := ALLTRIM(cTexto1) // Remove todos os espaÃ§os. Comumente a mais usada

    // Criar uma string de espaÃ§os
    cResp       := SPACE(20)

    // Exemplo de quando usar aspas SIMPLES para definir uma string
    cHTML   :='<a href="https://www.freecodecamp.org/" target="_self">freeCodeCamp</a>'
    

    // Pesquisa a posição de um texto dentro de outro
    cTexto1     := "Kassio Batista é um Analista Protheus/ADVPL"
    nAT         := AT("ADVPL", cTexto1) // Vai aparecer o numero da posição em que a palavra começa

    // Pesquisa a ultima ocorrência de um texto em outro
    nRat        := RAT("o", cTexto1)

    // Valida se o caractere é letra
    cTexto1     := "K"
    cTexto2     := "1"
    lResp       := ISALPHA(cTexto1)
    lResp       := ISALPHA(cTexto2)
    // Valida se o caractere é numero
    lResp       := ISDIGIT(cTexto1)
    lResp       := ISDIGIT(cTexto2)

    // Retorna o tamanho da String
    cTexto1     := "Kassio Batista é um Analista Protheus/ADVPL"
    nResp       := LEN(cTexto1)

    // Retorna o lado esquerdo de uma string
    cResp       := LEFT(cTexto1,10)
    // Retorna o lado direito de uma string
    cResp       := RIGHT(cTexto1,10) // Caracteres contados da direita pra esquerda

    // Deixa o texto com todas as letras em minusculo
    cResp       := LOWER(cTexto1)

    // Deixa o texto com todas as letras em maiusculo
    cResp       := UPPER(cTexto1)

    // Centraliza uma string adicionando caracteres à esquerda e à direita
    cResp       := PadC(cTexto1, 90, "-") // Se o número de caracteres a ser preenchido for menor que o texto referenciado, apenas vai cortar o texto.
    // Caracteres à direita
    cResp       := PADR(cTexto1, 90, "_")
    // Caracteres à esquerda
    cResp       := PADL(cTexto1, 90 , "_")

    // Cria uma string com replica dos caracteres
    cResp       := REPLICATE( "K",7 )

    // Cria uma array a partir de uma string com um separador padrão
    cTexto1     := "Kassio, Batista, Souza, Protheus, ADVPL, Programação"
    cResp       := STRTOKARR(cTexto1,"," )
    cResp       := Separa(cTexto1,"," )

    // Tranforma um caractere da strig em outro passado por parametro
    cTexto1     := "1.592.367,99"
    cResp       := STRTRAN(STRTRAN(cTexto1, ".", ""), ",", ".")

    // Retorna o pedaço de uma string
    cTexto1     := "Eu tenho uma mente milionária"
    cResp       := SUBSTR(cTexto1, 4, 15)

    // Tranforma qualquer valor em uma string com formatação
    cTexto1     := "00000000000177"
    cResp       := Transform(cTexto1, "@R 99.999.999/9999-99") // Pode pesquisar por pictures do Protheus e brincar com essa função

RETURN
