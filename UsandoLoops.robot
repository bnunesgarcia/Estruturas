*** Settings ***
Documentation   Vamos aprender a fazer LOOPS usando o Robot Framework!!

*** Variables ***
### Indíce da lista          0      1        2       3       4       5
@{MINHA_LISTA_DE_FRUTAS}   maça  abacaxi  banana  morango  laranja  uva

*** Test Case ***
Teste de repetir keyword
    [Documentation]    Chama uma mesma keyword varias vezes
    Usando Repeat Keyword    

Teste FOR do tipo IN RANGE
    [Documentation]    Faz um loop dentro de um intervalo passado usando um RANGE
    Usando FOR IN RANGE

Teste de FOR do tipo IN
    [Documentation]    Faz um loop percorrendo a lista que voce passar 
    Usando FOR IN

Teste de FOR do tipo IN ENUMERATE
    [Documentation]    Faz um loop percorrendo a lista passada e percorre o indice da lista
    Usando FOR do tipo IN ENUMERATE

Teste de sair do FOR
    [Documentation]    Para controlar quando o FOR deve ser encerrado antes do término de todos os loops
    Usando FOR IN com EXIT FOR LOOP IF

*** Keywords ***
Usando Repeat Keyword
    Log To Console    ${\n}
    Repeat Keyword    4x    Log To Console    Minha repetição de Keyword!!!

Usando FOR IN RANGE
    Log To Console    ${\n}
    FOR    ${counter}    IN RANGE    0    5
        Log To Console    Minha posição é: ${counter}
        Log    Minha posição é: ${counter}
    END

Usando FOR IN
    Log To Console    ${\n}
    FOR    ${FRUTAS}    IN    @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${FRUTAS}!
    END

Usando FOR do tipo IN ENUMERATE
    Log To Console    ${\n}
    FOR    ${INDICE}    ${FRUTAS}    IN ENUMERATE   @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTAS}!
    END

Usando FOR IN com EXIT FOR LOOP IF
    Log To Console    ${\n}
    FOR    ${INDICE}    ${FRUTAS}    IN ENUMERATE   @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTAS}!
        Exit For Loop If    '${FRUTAS}' == 'banana'
    END


