#!/bin/bash

#Nome: Eiji Kumamoto Neto
#Matricula: 1520011336

echo 'Iniciadndo Script'

PATH=/home/eiji/bin:/home/eiji/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/eiji

#Criando diretorio
echo 'Criando diretorio, nomeie o diretorio (EX.:LOG): '
read CDIR
mkdir ~/exercicio/$CDIR
echo 'Diretorio criado' >> ~/exercicio/$CDIR/log

#Criando arquivo
echo 'Criando arquivo, nomeie o arquivo (EX.:LOG123): '
read FILE_LOG
touch ~/$CDIR/$FILE_LOG
echo 'Arquivo criado' >> ~/$CDIR/log

#Escrevendo do arquivo
echo 'Escrevendo no arquivo'
date >> ~/$CDIR/$FILE_LOG
echo 'Resumo arquivo: ' >> ~/$CDIR/log
head ~/$CDIR/$FILE_LOG >> ~/$CDIR/log

#Quando o Script foi executado.
touch ~/$CDIR/log_`date "+%d_%m_%Y - %H:%M:%S".txt

#Comando do Script para comprimir o pacote de aruqvos log.
EDIT_DATE=`date "+%d%m%Y%H%M%S"`
export EDIT_DATE
tar -cvzf log_$EDIT_DATE.tgz ~/exercicio --directory ~/exercicio
mv log_$EDIT_DATE.tgz /home/eiji

echo 'finalizando script'
