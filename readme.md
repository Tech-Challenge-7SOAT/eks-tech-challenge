# Projeto TECH CHALLENGE

### Passos para Configuração e Execução

1. **Clone o Repositório na Branch "Master"**

   ```sh
   git clone https://github.com/Tech-Challenge-7SOAT/tech-challenge-7soat.git
   cd tech-challenge-7soat                                                                                                           

2. **Inicie o Minikube**

   ```bash
   minikube start

3. **Navegue até a pasta /terraform**

   ```bash
   cd terraform

4. **Execute os seguintes comandos do Terraform**

   ```bash
   terraform init
   terraform plan
   terraform apply --auto-approve

5. **Executar os comandos do Minikube**

   ```bash
   minikube dashboard
   minikube service fastfood-api -n fastfood-api
   
6. **Realizar teste de carga**

   ```bash
   k6 run --vus 10 --duration 30s k6.js

7. **Acesse a Aplicação**

A aplicação estará disponível no endereço gerado pelo comando "minikube service fastfood-api -n fastfood-api".