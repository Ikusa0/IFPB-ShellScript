## P.S. 2020.2 Lista 03 - Substituição Aritmética

1. Escreva um script que peça para o usuário digitar um número inteiro. Armazene este número da variável x. Faça a variável x receber o valor x + 21. Imprima na tela o valor de x.


2. Escreva um script que soma 3 números passados como argumentos de linha de comando. Por exemplo:

   ```shell
   $ ./a.sh 10 20 30
   > 60
   ```

3. Escreva um script que receba dois argumentos passados pela linha de comando, digamos a e b, e imprima o valor da expressão (a+10)b - 5. Por exemplo:

   ```shell
   $ ./b.sh 0 2
   > 95
   ```

4. Escreva um script que recebe 3 nomes de arquivo como parâmetros de linha de comando e imprime a soma dos números de linhas dos 3 arquivos. Utilize a substituição de shell e o comando wc -l para contar o número de linhas de cada arquivo. Por exemplo:
   
   ```shell
   $ ./c.sh a.txt b.txt c.txt
   > 13
   
   Supondo que os arquivos a.txt, b.txt e c.txt possuam o seguinte conteúdo:
   
   #a.txt:
   1
   2
   3
   
   #b.txt:
   0
   0
   0
   0
   0
   0
   
   #c.txt:
   a
   b
   c
   d
   ```