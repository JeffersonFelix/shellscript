#!/bin/sh

#Declara uma variavel e exporta para o ambiente
#OU, coloca-se no arquivo ~/.bashrc
NOME_LOG=exercicio1.log
export NOME_LOG

#Declara a variavel path_log que contem o caminho completo onde o arquivo
#de log sera criado
path_log=$1/$NOME_LOG

echo "Caminho completo para o log eh: $path_log"

#testara se a variavel $1 está vazia, caso sim, eecutar o if
#se  caso a variavel nao estiver, pulara o if
if [ -z $1 ]; then
	echo "Deve-se digitar um parametro para o Script."
	echo "Exemplo: $0 ajuda"
	exit;
fi

#testara se a variavel $1 OU  se a variavel $2 foi dada entrada de texto "ajuda",
#se sim,  ira exibir a ajuda. senao pulara o if
if [[ "$1" = "ajuda"]] || [ "$2" = "ajuda" ]; then
	echo "-------------------------------------------------------------------"
	echo "Precisa de Ajuda? - Script desenvolvido por Eiji Kumamoto Neto."
	echo "Como usar corretamente o Script."
	echo "Voce deve indicar o diretori onde o log devera ser salvo como parametro."
	echo "Exemplo: $0 diretorio"
	echo "-------------------------------------------------------------------"
	exit;
fi
echo "Muito bem! Voce escolheu o diretorio: $1 para salvar o LOG."
