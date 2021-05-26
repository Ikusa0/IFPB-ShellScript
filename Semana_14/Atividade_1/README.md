## P.S. 2020.2 Lista 13 - Modularização

1. Escreva um script com uma função que receba 2 números e retorne o maior entre eles. Escreva uma nova função, esta recebe 2 números e retorna o menor entre eles.


2. Considere o seguinte arquivo:

    ```	
    2 10 13 14
    6 5 -9 11 12 4
    15
    12 3
    21 1 2 3 4 5 6 7 8 9
    6
    ```

    Escreva um script que importe as funções da questão anterior e use-as para encontrar o menor e o maior número do arquivo apresentado acima.


3. Escreva um script que tenha uma função ping_test. Esta recebe um endereço IP como parâmetro, pinga para este IP (sem exibir nada na tela) e exibe OK se o endereço estiver acessível e FALHA caso contrário.


4. Escreva um script que, baseado em opções de linha de comando:
<br>a) Remova todas as letras maiúsculas de um arquivo (usando tr).
<br>b) Remova todos os dígitos de um arquivo (usando sed).
<br>c) Substitua todos os caracteres que não são letras nem dígitos de um arquivo por <?> (usando awk).

    <br>Cada uma das opções deve ser escrita em uma função diferente. Estas funções devem estar em um módulo (i.e., um script diferente).


