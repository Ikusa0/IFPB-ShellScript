## P.S. 2020.2 Lista 11 - Sed

<b>*** Todas as soluções devem usar o comando sed com expressões regulares.</b>

1. Escreva um script que use o comando **sed** para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (**\n**).


2. Escreva um script que, baseado em opções de linha de comando:

    ```
    a - Remova todas as letras de um arquivo.
    b - Remova todos os dígitos de um arquivo.
    c - Substitua todos os caracteres que não são letras nem dígitos de um arquivo por <?>.
    ```

3. Escreva um script que remova todos os números de CPF de um arquivo de entrada, alterando o seu valor para **\*\*CENSURADO****.


4. Escreva um script que, dado uma lista de números de telefone no formato xxxxxxxxxxx, coloque cada telefone no formato (xx) x xxxx-xxxx. Exemplo:
<br><br>
    Para o seguinte arquivo: 
    
    ```js
    12345678900
    11111111111
    83987654321
    ```

    A saída deve ser:

    ```js
    (12) 3 4567-8900
    (11) 1 1111-1111
    (83) 9 8765-4321
    ```
   