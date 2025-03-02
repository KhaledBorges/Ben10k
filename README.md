# Gerador de Imagens do Ben10 Mil

Este script Shell é um script que cria **10 mil imagens** do personagem "Ben10 Mil". A execução é controlada com intervalos entre cada cópia, personalizáveis pelo usuário.
**OBS:** Eu pretendia fazer com que o programa baixasse a foto da internet, mas isto poderia consumir muito tempo e poder de processamento fazendo o Download individualmente de cada imagem, por este motivo preferi que o programa fizesse a cópia

---

## **Pré-requisitos**
- Ambiente Linux ou macOS com Shell/Bash disponível.
- O script deve estar no mesmo diretório que a imagem chamada `ben10mil.jpeg`. Essa imagem será duplicada para criar as 10 mil cópias.

---

## **Como usar**
1. Pelos meus testes, este script funcionu melhor quando executado dentro do terminal, logo, abra o terminal e vá até a pasta baixada (contendo a imagem e o script).
2. Certifique-se de que a imagem chamada `ben10mil.jpeg` também está no mesmo diretório do script.
3. Execute o script no terminal (utilizando:
```shell script
./script.sh
```
4. Ao executar, você verá as seguintes opções:
```shell script
Olá, tudo bem [SeuNome]? Você deseja baixar 10 mil fotos do Ben10 mil? 
   1) Sim
   2) Não
   ------------------------------------------------------------------
   Por favor, não escolha outra opção, isso vai quebrar o programa
```

### Opção 1: Criar 10 mil fotos do Ben10 Mil
- Após selecionar a opção **1**, o programa perguntará qual o intervalo (em milissegundos) entre cada criação de imagem.  
  Exemplo: Digite valores entre **10ms** e **40ms** (valores fora deste intervalo não são tão recomendáveis).
  Se o seu computador não tiver um poder de processamento muito bom, não é recomendado colocar o tempo abaixo de 10ms, entretanto, a grande maioria dos computadores hoje em dia NÃO terão problemas ao rodar este script
  
- O programa cria uma pasta chamada `Ben10MilnºX` (`X` é incremental e evita sobrescrever pastas existentes). Dentro dela, serão geradas 10 mil cópias de `ben10mil.jpeg`.
- Como dito acima, `X` é incremental, logo, se a pasta `Ben10Milnº1` já existir, ela irá criar a `Ben10Milnº2`, e assim por diante sem um limite
  -Caso seja apagado alguma pasta, a próxima pasta criada será a que foi apagada anteriormente
    -Caso todas as pastas sejam apagadas, a contagem volta do número 1

- Durante o processo, você verá mensagens indicando o progresso: 
```
O Ben 10 mil de número X foi criado
```

---

### Opção 2: Sair
- Se a opção **2** for escolhida, o programa exibe uma mensagem de despedida e se encerra sem fazer nada.

---

### Escolher outra opção (1 ou 2)
- Caso uma outra opção seja inserida, o script tenta brincar, simulando "quebrar o PC". Ele faz o sistema iniciar uma contagem regressiva e eventualmente executa o comando:
```shell script
shutdown -h now
```
  Isso **desligará o computador** imediatamente após a contagem regressiva, então não experimente inserir valores inválidos a menos que queira desligar sua máquina.

---

## 📁 **Arquivos gerados**
- Pasta: `Ben10Mil nºX` (onde `X` é incremental).
- Dentro da pasta, 10 mil imagens serão copiadas a partir do arquivo `ben10mil.jpeg`.
  -Este arquivo fica na mesma pasta que o script, verifique se ele foi baixado corretamente

---

## ⚠️ **Atenção**
1. **Performance**: Escolher um intervalo abaixo de **10ms** pode causar lentidão extrema ou travamentos no sistema, dependendo da capacidade da sua máquina.
2. **Cuidado com outras opções**: Inserir opções diferentes de **1** ou **2** forçará o desligamento imediato.
3. **Espaço em disco**: Certifique-se de ter espaço suficiente em disco, já que gerar 10 mil cópias de uma imagem pode consumir bastante armazenamento.

---

# IMPORTANTE:
Criado para fins de experimentação e prática. Use com sabedoria e cuidado!
