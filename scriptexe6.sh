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
echo 'arquivo criado' >> ~/exercicio/log

#escrevendo do arquivo
echo 'escrevendo no arquivo'
date >> ~/exercicio/momento

#Substituição do nome do log para log_dataehora.txt
log_name=/exercicio/"log_`date +%d%m%Y%T`.txt"
#mv log log_`date`.txt
echo 'resumo arquivo: ' >> ~/exercicio/log
head ~/exercicio/momento >> ~/exercicio/log

#Comando do Script para comprimir o pacote de aruqvos log.
tar -cvzf log.tar.gz ~/exercicio --directory ~/exercicio

echo 'finalizando script'

#Nome: Eiji Kumamoto Neto
#Matricula: 1520011336
