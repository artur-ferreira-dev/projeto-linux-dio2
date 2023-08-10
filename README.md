# Desafio do Curso Linux do Zero - Shell Script para Configuração de Servidor Apache

Este repositório contém um desafio proposto pela plataforma DIO (Digital Innovation One) como parte do Curso Linux do Zero. O objetivo desse desafio é criar um script em shell para configurar um servidor Apache e realizar a implantação de um site.

## Requisitos

Antes de executar o script, certifique-se de que você está executando-o como root, uma vez que ele requer privilégios de administrador para instalar pacotes e configurar o servidor.

## Instruções

1. Faça o download do script para o seu sistema Linux.
2. Abra o terminal e navegue até o diretório onde o script foi baixado.
3. Dê permissão de execução ao script com o comando: `chmod +x nome_do_script.sh`
4. Execute o script como root: `sudo ./nome_do_script.sh`

## O que o script faz?

O script começa verificando se está sendo executado com privilégios de root, uma vez que as operações a serem realizadas requerem permissões administrativas. Em seguida, ele procede com as seguintes etapas:

1. Atualização dos repositórios: O script executa o comando `apt update` para garantir que os repositórios de pacotes estejam atualizados.

2. Instalação do Apache: Utilizando o comando `apt install apache2 -y`, o script instala o servidor web Apache.

3. Instalação do unzip: O script utiliza o comando `apt install unzip -y` para instalar a ferramenta unzip, necessária para descompactar arquivos.

4. Download e Configuração dos Arquivos do Site: O script faz o download do arquivo ZIP contendo os arquivos do site a ser implantado, utilizando o comando `wget`. Após o download, ele descompacta os arquivos para o diretório temporário `/tmp/apache.zip` e, em seguida, copia o conteúdo para o diretório do servidor web em `/var/www/html/`.

5. Conclusão: O script exibe a mensagem "Configurações realizadas" para indicar que as configurações e implantação do site foram concluídas com sucesso.

## Observação

Certifique-se de entender o que o script está fazendo antes de executá-lo, pois ele realizará alterações no sistema e instalará software. É recomendável executar scripts apenas de fontes confiáveis e em ambientes de teste.

Lembre-se de que este é um desafio de aprendizado e, ao executar o script, você estará praticando suas habilidades de scripting e administração de sistemas Linux.
