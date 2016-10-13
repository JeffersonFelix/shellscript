#!/bin/bash

echo 'iniciadndo script'

PATH=/home/eiji/bin:/home/eiji/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/eiji

#criando diretorio
echo 'criando diretorio'
mkdir ~/exercicio
echo 'diretorio criado' >> ~/exercicio/log

#criando arquivo
echo 'criando arquivo exemplo'
touch ~/exercicio/momento
touch ~/exercicio/"log_`date +%d_%m_%Y-%H:%M:%S`.txt"
echo 'arquivo criado' >> ~/exercicio/log

#escrevendo do arquivo
echo 'escrevendo no arquivo'
date >> ~/exercicio/momento

echo 'resumo arquivo: ' >> ~/exercicio/log
head ~/exercicio/momento >> ~/exercicio/log

#Comando do Script para comprimir o pacote de aruqvos log.
EDIT_DATE=`date "+%d%m%Y"`
export EDIT_DATE
tar -cvzf log_$EDIT_DATE.tgz ~/exercicio/"log_`date +%d_%m_%Y-%H:%M:%S`.txt"
mv log_$EDIT_DATE.tgz /home/eiji

echo 'finalizando script'

#Nome: Eiji Kumamoto Neto
#Matricula: 1520011336
