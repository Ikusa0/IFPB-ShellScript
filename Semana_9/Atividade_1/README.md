## P.S. 2020.2 Lista 08 - Estruturas While e Case

1. Escreva um script chamado **help_test_2.sh**. Este deve ter um laço, apresentando opções para o usuário. Se o usuário digitar **sair**, ele sai do script. Se digitar “**logica**”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se digitar “**aritmetica**”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se digitar “**strings**”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se digitar “**variáveis**”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se digitar “**arquivos**”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test. Se digitar "**extended**", o script deve imprimir uma ajuda sobre a notação estendida **[[ ]]**.


2. Escreva um script que exibe a data/hora atual na tela **enquanto** espera que um arquivo chamado chave.txt seja criado no diretório /tmp, verificando isso a cada 2 segundos. Quando o arquivo for criado, o script termina sua execução.


3. Escreva um script que funcione como um explorador de arquivos. Exibe um menu. se o usuário digitar **q**, sai do script. Se digitar **d**, mostra os diretórios da pasta atual. Se digitar **f**, exibe os arquivos da pasta atual. Se digitar **v \<arq>**, exibe o conteúdo do arquivo \<arq>. Se digitar **cd \<dir>**, muda para o diretório \<dir>, se este existir.


4. Considere o seguinte arquivo ips.txt:
    ```
    8.8.8.8
    8.8.4.4
    200.148.191.197
    168.196.40.154
    45.225.123.54
    ```
   
    Use um laço while para executar 4 pings para cada ip. Liste os IPs que não foram possíveis acessar.


