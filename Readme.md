<h1 align="center">Docker - Nginx - SSL </h1>

<p align="center">
  <img alt="Docker" src="https://img.shields.io/static/v1?label=Docker&message=Nginx&color=8257E5&labelColor=000000"  />
  <img alt="Certs" src="https://img.shields.io/static/v1?label=Certificado&message=SSL&color=8257E5&labelColor=000000"  />
  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=49AA26&labelColor=000000">
</p>

<p align="center">
  <img alt="Prometheues" src="images/nginx-ssl.png">
</p>

## 🌱 Project

- Projeto laboratório para criar um certificado SSL autoassinado com OpenSSL e realização de teste com uma aplicação Nginx.

## ✨ Tecnologias

- Docker
- OPenSSL
- Shell Script
- DOcker Compose
- Nginx

## 🛠️ Etapas serem feitas

- Criar Script para gerar os certificados
- Configurar um dns no /et/hosts da máquina
- Criar e configura uma aplicação rodando no Nginx
- Criar nginx.conf
- Dockerizar a aplicação
- Criar docker-compose para subir o nginx

## ✨ Execução

- SUbindo os serviços

```bash
docker-compose up -d --build
```

## 📄 Licença

## 🙇 Referências