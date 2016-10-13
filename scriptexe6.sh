#!/bin/bash

#Nome: Eiji Kumamoto Neto
#Matricula: 1520011336

echo 'Iniciadndo Script'

#Criando diretorio
echo 'Criando diretorio, nomeie o diretorio (EX.:LOG): '
read CDIR
mkdir ~/exercicio/$CDIR
echo 'Diretorio criado' >> ~/$CDIR/log

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
nome_log="log_`date +%d_%m_%Y_%H:%M:%S`.txt"  #adicionei as aspas

#Comando do Script para comprimir o pacote de aruqvos log.
#exclui as duas variáveis
# excluí o export
tar -cvzf log_$nome_log.tgz ~/$CDIR  #troquei os nomes das variáveis
mv log_$nome_log.tgz /home/eiji

echo 'finalizando script'
