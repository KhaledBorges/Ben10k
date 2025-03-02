echo "Olá, tudo bem $USER? você deseja baixar 10 mil fotos do Ben10 mil?"
echo "1) Sim"
echo "2) Nao"
echo "------------------------------------------------------------------"
echo "Por favor, não escolha outra opção, isso vai quebrar o programa"
imgBen10k="./ben10mil.jpeg"
ben10k="./Ben10Mil"
counter=1

read opcao

case $opcao in
	1) echo "IMPORTANTE: digite em milisegundos o intervalo entre cada foto"
	echo "O recomendado é entre 10MS À 40MS"
	echo "SELECIONAR ABAIXO DE 10 PODE DEIXAR SEU COMPUTADOR TRISTE"
	echo "SELECIONAR ACIMA DE 40 PODE FAZER O PROCESSO DEMORAR DEMAIS"

	read ms
	msReal=$(echo "$ms / 1000" | bc -l)

	echo "Ok, criando uma pasta com 10 mil fotos do Ben10 mil com um intervalo de ${ms}ms entre cada uma"
	msTotalEmSegundos=$(echo "scale=0; ($ms * 10000) / 1000" | bc -l)

	echo "Isto vai demorar em torno de $msTotalEmSegundos segundos caso seu pc não sofra!"

	DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

	while [ -d "${ben10k}nº${counter}" ]; do
	counter=$((counter + 1))
	done

	mkdir -p "${ben10k}nº${counter}"
	echo "Criando pasta, por favor, aguarde alguns segundos"

	for i in {1..10000}
	do
	cp "${imgBen10k}" "${ben10k}nº${counter}/Ben$i"
	echo "O ben 10 mil de número $i foi criado"
	sleep ${msReal}
	done
	echo "Pasta com 10 mil fotos do Ben10 mil de número ${counter} foi criada em:"
	pwd ;;
	2) echo "Tudo bem, tchau"
	exit ;;
	*) echo "Falei pra escolher só 1 ou 2."

	for x in $(seq 5 -1 1)
	do
	echo "$x segundos."
	sleep 1.1
	done

	shutdown -h now ;;
	esac
