## P.S. 2020.2 Lista 07 - Estruturas condicionais: if

1. Escreva um script chamado help_test.sh. Este deve receber um ou mais parâmetros de linha de comando. Se um destes parâmetros for “**logica**”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se um destes parâmetros for “**aritmetica**”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se um destes parâmetros for “**strings**”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se um destes parâmetros for “**variáveis**”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se um destes parâmetros for “**arquivos**”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test.


2. Se você cria uma variável no shell atual e usa o comando export, esta variável fica disponível em qualquer script chamado a partir do shell atual. Ex.:

    ```sh
    x=10
    export x
    ./teste.sh
    ```

   Se executar “echo $x” dentro do script teste.sh, este imprimirá 10. Sem o export, a variável “x” não existiria. Escreva um script que teste se as variáveis x, y e z existem (e têm valor diferente de vazio). Peça para o usuário digitar um valor para cada uma que não existir. Exiba o valor da soma x+y+z na tela.


3. Escreva um script que imprima a palavra **DIRS** e abaixo liste todos os diretórios da pasta atual. Em seguida imprima a palavra **FILES** e abaixo liste todos os arquivos da pasta atual. Por fim, imprima a palavra **LINKS** e abaixo liste todos os links simbólicos da pasta atual.


4. [<b style="color:Tomato">CUIDADO!</b>]  Escreva um script que remova todos os arquivos que possuem permissão para execução no diretório atual (e nenhum outro).
