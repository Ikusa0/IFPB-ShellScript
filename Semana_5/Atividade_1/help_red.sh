#!/bin/bash

echo -e \
"\e[1mREDIRECIONADORES\e[m

STDIN, STDOUT & STDERR:

> Quando o Linux é iniciado, são definidos como entrada padrão, saída padrão e saída padrão de erros o próprio terminal.

> Tudo o que é executado no Linux possui essas entrada e saídas padrão como o fluxo original de dados. Fluxo que pode ser\
 redirecionado para ou de arquivos, comandos ou qualquer outra fonte disponível.

REDIRECIONADORES DE ENTRADA:

> Redirecionam os dados à direita do redirecionador para a entrada padrão do comando à esquerda.

I. \e[1m<\e[m :

> Redireciona um arquivo para a entrada padrão do comando.

EXEMPLO:
\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> ls < \"dir_to_list.txt\"

II. \e[1m<<\e[m :

> Redireciona uma string multilinha para a entrada padrão do comando.

EXEMPLO:
\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> cat <<END
\t\e[2m>>> Linha 1
\t\e[2m>>> Linha 2
\t\e[2m>>> Linha 3
\t\e[2m>>> ...
\t\e[2m>>> END

III. \e[1m<<<\e[m :

> Redireciona uma string para a entrada padrão do comando.

EXEMPLO:
\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> ls <<< \"/etc\"

REDIRECIONADORES DE SAÍDA:

> Redirecionam a saída padrão e/ou a saída de erros do comando à esquerda do redirecionador para o arquivo à direita.

I. \e[1m> & >>\e[m :

> Redirecionam a saída padrão. \">\" sobrescreve o arquivo e \">>\" adiciona ao final do arquivo.

EXEMPLO:
\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> ls \"\${1}\" > overwrite_this_file.txt
\t\e[2m>>> ls \"\${1}\" >> append_to_the_end.txt

II. \e[1m2> & 2>>\e[m :

> Redirecionam a saída de erros padrão. \"2>\" sobrescreve o arquivo e \"2>>\" adiciona ao final do arquivo.

EXEMPLO:
\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> ls \"\${1}\" 2> overwrite_this_file_error.txt
\t\e[2m>>> ls \"\${1}\" 2>> append_to_the_end_error.txt

III. \e[1m&> & &>>\e[m :

> Redirecionam a saída padrão e a saída de erros padrão. \"&>\" sobrescreve o arquivo e \"&>>\" adiciona ao final do arquivo.

EXEMPLO:
\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> ls \"\${1}\" &> flaws_and_successes_overwrite.txt
\t\e[2m>>> ls \"\${1}\" &>> flaws_and_successes_append.txt

IV. \e[1m|\e[m :

> Redireciona a saída padrão de um comando à esquerda para a entrada padrão de outro comando à direita.

EXEMPLO:
\t\e[2m>>> #!bin/bash
\t\e[2m>>>
\t\e[2m>>> cat \"10.093-20.08767\" | bc -l
" | less -RFM