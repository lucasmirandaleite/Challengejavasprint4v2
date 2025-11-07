🏍️ Sistema de Rastreamento RFID para Motu

Visão Geral do Projeto

Este projeto foi desenvolvido como parte da Entrega Final do 4º Sprint de Java Advanced da FIAP. O objetivo é propor e implementar uma solução tecnológica inovadora para um problema real da Motu: o rastreamento e monitoramento de motocicletas utilizando a tecnologia RFID (Identificação por Radiofrequência).

A aplicação permite o registro de motocicletas, a simulação de leituras RFID em diferentes pontos e a consulta do histórico de movimentação dos veículos.

🚀 Tecnologias Utilizadas (Java Advanced)

O projeto é uma aplicação full-stack construída com base nos pilares do desenvolvimento moderno em Java:

Categoria
Tecnologia
Conceito Aplicado
Backend
Java 17+
Linguagem principal.
Framework
Spring Boot 2.x/3.x
Autoconfiguração, Injeção de Dependência (DI).
Persistência
Spring Data JPA / Hibernate
Mapeamento Objeto-Relacional, Repositórios.
Banco de Dados
H2 Database (Em memória)
Banco de dados para desenvolvimento e testes.
Frontend
Thymeleaf
Motor de templates para renderização dinâmica.
Estilo
Bootstrap 5 + CSS Customizado
Design responsivo e tema Dark/Verde de alto contraste.


✨ Funcionalidades Principais

•
Cadastro de Motocicletas: Registro de motos com informações como placa, modelo e filial.

•
Registro RFID: Simulação da leitura de tags RFID, associando a moto a um ponto de leitura e registrando a data/hora.

•
Consulta de Histórico: Visualização do histórico completo de movimentação de cada moto.

•
Interface Otimizada: Tema Dark/Verde de alto contraste para melhor usabilidade em ambientes de monitoramento.

📐 Arquitetura e Boas Práticas

A solução segue o Padrão MVC (Model-View-Controller) e a arquitetura em camadas, demonstrando a aplicação dos principais conceitos de Java Advanced:

•
Controller (@Controller): Responsável por receber as requisições HTTP e retornar as views (páginas HTML).

•
Service (@Service): Contém a lógica de negócio (regras de validação, processamento de dados).

•
Repository (@Repository): Utiliza Spring Data JPA para abstrair o acesso ao banco de dados.

•
DTOs: Utilizados para transferir dados entre as camadas, garantindo o encapsulamento e a segurança.

🛠️ Como Rodar o Projeto Localmente

Para executar o projeto em sua máquina, siga os passos abaixo:

Pré-requisitos

•
Java Development Kit (JDK) 17 ou superior.

•
Apache Maven 3.6 ou superior.

Passos

1.
Clone o repositório:

2.
Compile o projeto com Maven:

3.
Execute a aplicação:

4.
Acesse a aplicação: Abra seu navegador e acesse: http://localhost:8080

🔗 Status e Acesso Online

•
Link de Acesso: https://web-production-cb308.up.railway.app/

•
Branch Principal: main

👥 Equipe

Nome
RM
Lucas Miranda Leite
[Seu RM]
[Nome do Membro 2]
[RM do Membro 2]
[Nome do Membro 3]
[RM do Membro 3]


