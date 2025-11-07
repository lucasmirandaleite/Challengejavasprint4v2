# Challenge Java Sprint 4 - RFID Tracking System

## 📋 Sobre o Projeto

Sistema de rastreamento RFID para gestão de motos desenvolvido como parte do Challenge Java Sprint 4. A aplicação permite o gerenciamento de motos, filiais e registros de leitura RFID através de uma API REST e interface web.

## ✅ Correções Aplicadas

Este projeto foi **completamente corrigido e otimizado** para deploy. As principais correções incluem:

- ✔️ **Dependências Maven**: Adicionadas todas as dependências faltantes (Validation, Security, Thymeleaf, ModelMapper, H2)
- ✔️ **Configurações de Ambiente**: Separação clara entre ambientes dev e prod
- ✔️ **Segurança**: Configuração correta do Spring Security com BCrypt
- ✔️ **Banco de Dados**: Scripts de inicialização corrigidos e compatíveis com H2 e PostgreSQL
- ✔️ **Deploy**: Configuração automática para Render via `render.yaml`

## 🚀 Tecnologias Utilizadas

- **Java 11**
- **Spring Boot 2.7.18**
- **Spring Data JPA**
- **Spring Security**
- **Thymeleaf**
- **Maven**
- **H2 Database** (desenvolvimento)
- **PostgreSQL** (produção)
- **ModelMapper**

## 📦 Estrutura do Projeto

```
ChallengeJavaSprint4/
├── src/
│   ├── main/
│   │   ├── java/com/example/rfidtracking/
│   │   │   ├── config/          # Configurações (ModelMapper)
│   │   │   ├── controller/      # Controllers REST e Web
│   │   │   ├── dto/              # Data Transfer Objects
│   │   │   ├── exception/        # Tratamento de exceções
│   │   │   ├── model/            # Entidades JPA
│   │   │   ├── repository/       # Repositórios
│   │   │   ├── security/         # Configuração de segurança
│   │   │   └── service/          # Lógica de negócio
│   │   └── resources/
│   │       ├── templates/        # Templates Thymeleaf
│   │       ├── application.properties
│   │       ├── application-dev.properties
│   │       ├── application-prod.properties
│   │       └── data.sql          # Dados iniciais
├── pom.xml
└── render.yaml                   # Configuração Render
```

## 🔧 Como Executar Localmente

### Pré-requisitos

- Java 11 ou superior
- Maven 3.6+

### Passos

1. Clone o repositório:
```bash
git clone https://github.com/lucasmirandaleite/Challengejavasprint4.git
cd Challengejavasprint4/ChallengeJavaSprint4
```

2. Compile o projeto:
```bash
mvn clean package -DskipTests
```

3. Execute a aplicação:
```bash
java -jar target/project-sprint4-1.0.0.jar --spring.profiles.active=dev
```

4. Acesse a aplicação:
- **Interface Web**: http://localhost:8080
- **API REST**: http://localhost:8080/api/motos
- **Console H2**: http://localhost:8080/h2-console

### Credenciais de Acesso

- **Admin**: `admin` / `admin123`
- **User**: `user` / `user123`

## 🌐 API REST Endpoints

### Motos

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| GET | `/api/motos` | Lista todas as motos (paginado) |
| GET | `/api/motos/{id}` | Busca moto por ID |
| POST | `/api/motos` | Cria nova moto |
| PUT | `/api/motos/{id}` | Atualiza moto existente |
| DELETE | `/api/motos/{id}` | Remove moto |

### Registros RFID

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| GET | `/api/registros` | Lista todos os registros (paginado) |
| GET | `/api/registros/{id}` | Busca registro por ID |
| POST | `/api/registros` | Cria novo registro |
| PUT | `/api/registros/{id}` | Atualiza registro existente |
| DELETE | `/api/registros/{id}` | Remove registro |

### Exemplo de Requisição

```bash
# Criar uma moto
curl -X POST http://localhost:8080/api/motos \
  -H "Content-Type: application/json" \
  -d '{
    "modelo": "Honda CG 160",
    "placa": "ABC-1234",
    "status": "DISPONIVEL"
  }'
```

## 🚀 Deploy no Render

O projeto está configurado para deploy automático no Render. Siga o [Guia de Deploy](GUIA_DEPLOY_RENDER.md) para instruções detalhadas.

**Resumo:**
1. Faça push das correções para o GitHub
2. Crie um novo Blueprint no Render
3. Selecione o repositório
4. O Render detectará automaticamente o `render.yaml`
5. Aguarde o deploy (5-10 minutos)

## 📚 Documentação Adicional

- [CORRECOES.md](CORRECOES.md) - Detalhamento completo de todas as correções aplicadas
- [GUIA_DEPLOY_RENDER.md](GUIA_DEPLOY_RENDER.md) - Guia passo a passo para deploy

## 🎯 Requisitos da Entrega (Parte 1/4)

Este projeto atende aos seguintes requisitos da Demonstração Técnica da Solução:

- ✅ Aplicação rodando online (deploy no Render)
- ✅ Navegação pelos principais fluxos do sistema (CRUD de Motos e Registros RFID)
- ✅ Aplicação dos conceitos da disciplina (Spring Boot, JPA, REST, Security)
- ✅ Interface com boa UI/UX (Thymeleaf com Bootstrap)

## 👥 Autores

- Lucas Miranda Leite

## 📄 Licença

Este projeto foi desenvolvido para fins acadêmicos.
