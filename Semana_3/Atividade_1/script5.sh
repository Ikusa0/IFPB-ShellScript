#!/bin/bash

echo -e \
"\e[1mO QUE É SUBSTITUIÇÃO?\e[m

\tO Shell faz uma substituição quando encontra caracteres especiais.

EXEMPLOS:
> Ao printar o valor de uma variável é necessário identificar que desejamos acessar este valor usando o caractere '\$':

\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> a=10
\t\e[2m>>> echo -e \"O Valor de a é \$a \\\t---\"\e[0m

> O uso de aspas duplas indica ao comando que iremos usar esses caracteres especiais não de uma forma literal, mas como\
 indicadores para outras finalidades, neste caso seria acessar uma variável.

> A opção '-e' indica para o comando que interprete backslash escapes, caracteres especiais que iniciam com o '\\', \
como o '\\\t' do exemplo acima.

> O resultado do script acima será:

\e[2m\t$ O Valor de a é 10\t---\e[m

> Sem a opção '-e':

\e[2m\t$ O Valor de a é 10\\\t---\e[m

> Sem a opção '-e' e sem o uso de aspas duplas:

\e[2m\t$ O Valor de a é \$a\\\t---\e[m

> Na substituição de variável, é uma boa prática o uso de {} durante o acesso, para evitar quaisquer problemas como:

\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> a=pato
\t\e[2m>>> echo -e \"Um \$a, dois \$as...\"\e[0m

> Rodando esse script, teríamos o seguinte:

\e[2m\t$ Um pato, dois ...\e[m

> Isso ocorre pois a variável que antes era 'a', passou a ser 'as' já que não há espaçamento entre as letras. E como \
'as' não estava declarado, não havia nada armazenado para ser printado.

> O uso de {} permite colocar a palavra 'pato' no plural:

\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> a=pato
\t\e[2m>>> echo -e \"Um \${a}, dois \${a}s...\"\e[0m

\e[2m\t$ Um pato, dois patos...\e[m

\e[1mSUBSTITUIÇÃO DE SHELL\e[m

\tÉ possível também fazer substituição de comandos do Shell.

EXEMPLOS:
> Existem duas formas para se fazer a substituição de comandos do shell, com \`comando\` ou com \$(comando), a segunda \
opção é a mais recomendada:

\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> data=\`date \"+%F\"\`
\t\e[2m>>> hora=\$(date \"+%T\")
\t\e[2m>>> echo -e \"Data: \${data}\\\nHora: \${hora}\"\e[0m

> O resultado deste script é:

\e[2m\t$ Data: $(date "+%F")
\e[2m\t$ Hora: $(date "+%T")\e[m
" | less -RFM