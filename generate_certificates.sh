#!/bin/bash

# Colors (ALgumas cores que será utilizada para estilização)
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
IYELLOW='\033[1;33m'
BWhite='\033[1;37m'

# Logs
function log() {
  echo -e "${IYELLOW}$(date +'%Y-%m-%dT%H:%M:%S')" "==> Criação de certificado auto assinado para teste interno: $1${NC}"
}

log " 🟢 SCRIPT INICIALIZANDO ..."
sleep 5
echo -e "${IYELLOW}Script para gerar certificado auto assinado${NC}"
sleep 3

echo -e "${GREEN}Criando Certificado para o Registry...${NC}"
sleep 3

echo -e "${GREEN}[TASK 01] - Removendo chave e certificado vencidos...${NC}"
rm -f ./certs/lab.nginx.viana.io.key
rm -f ./certs/lab.nginx.viana.io.crt
sleep 3

# Gerando novo certificado e chave vÃ¡lidos
echo -e "${GREEN}[TASK 02] - Gerando nova chave e certificado validos...${NC}"
openssl req -new -x509 -newkey rsa:2048 -sha256 -nodes -keyout ./certs/lab.nginx.viana.io.key -days 3560 -out ./certs/lab.nginx.viana.io.crt -config ./certs/config/domain.cnf
sleep 5

echo -e "${GREEN}[TASK 03] - Ajustando permissao da chave e certificado...${NC}"
# chown root:ssl-cert ./certs/lab.nginx.viana.io.crt
chmod 644 ./certs/lab.nginx.viana.io.crt
# chown root:ssl-cert ./certs/lab.nginx.viana.io.key
chmod 640 ./certs/lab.nginx.viana.io.key
sleep 3

echo -e "${IYELLOW}Nova chave e certificado gerados com sucesso!${NC}"

# echo -e "${GREEN}[TASK 03] - ALTERAR O ARQUIVO /etc/hosts"
# echo '127.0.0.1   lab.nginx.viana.io' | sudo tee -a /etc/hosts


log "🔴 SCRIPT SENDO FINALIZADO..."

# Verificar prazo para expirar
# openssl x509 -in ./certs/lab.nginx.viana.io.crt -dates