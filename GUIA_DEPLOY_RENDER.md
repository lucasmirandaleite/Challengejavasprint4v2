# Guia Rápido de Deploy no Render

## Pré-requisitos

1. Conta no GitHub com o repositório do projeto
2. Conta no Render (gratuita) - [render.com](https://render.com)

## Passo a Passo

### 1. Fazer Push das Correções para o GitHub

Antes de fazer o deploy, você precisa enviar todas as correções para o seu repositório no GitHub:

```bash
cd /caminho/para/Challengejavasprint4
git add .
git commit -m "Correções para deploy no Render"
git push origin main
```

### 2. Criar Serviço no Render

1. Acesse [render.com](https://render.com) e faça login
2. No dashboard, clique em **New +** e selecione **Blueprint**
3. Conecte sua conta do GitHub se ainda não estiver conectada
4. Selecione o repositório `lucasmirandaleite/Challengejavasprint4`
5. O Render detectará automaticamente o arquivo `render.yaml`
6. Revise as configurações e clique em **Apply**

### 3. Aguardar o Deploy

O Render irá:
- Criar um banco de dados PostgreSQL
- Fazer o build da aplicação usando Maven
- Iniciar a aplicação automaticamente
- Fornecer uma URL pública para acesso

O processo leva aproximadamente 5-10 minutos.

### 4. Acessar a Aplicação

Após o deploy, você receberá uma URL no formato:
```
https://rfid-tracking-app.onrender.com
```

### 5. Testar os Endpoints

**API REST (sem autenticação necessária):**

```bash
# Listar motos
curl https://rfid-tracking-app.onrender.com/api/motos

# Criar uma moto
curl -X POST https://rfid-tracking-app.onrender.com/api/motos \
  -H "Content-Type: application/json" \
  -d '{"modelo":"Honda CG 160","placa":"ABC-1234","status":"DISPONIVEL"}'

# Buscar moto por ID
curl https://rfid-tracking-app.onrender.com/api/motos/1
```

**Interface Web (requer autenticação):**

Acesse a URL no navegador e faça login com:
- **Usuário**: `admin` | **Senha**: `admin123`
- **Usuário**: `user` | **Senha**: `user123`

## Variáveis de Ambiente (Opcional)

Se necessário, você pode adicionar variáveis de ambiente personalizadas no painel do Render:

1. Acesse o serviço web no dashboard
2. Vá em **Environment**
3. Adicione as variáveis necessárias

## Solução de Problemas

### Erro de Build

Se o build falhar, verifique os logs no Render:
1. Acesse o serviço
2. Clique em **Logs**
3. Procure por mensagens de erro

### Aplicação não inicia

Verifique se:
- O banco de dados foi criado corretamente
- A variável `DATABASE_URL` está configurada
- O perfil `prod` está ativo

### Banco de dados vazio

O banco de dados em produção não terá dados iniciais. Use a API para inserir dados ou crie um script de migração com Flyway.

## Recursos Adicionais

- [Documentação do Render](https://render.com/docs)
- [Spring Boot no Render](https://render.com/docs/deploy-spring-boot)
- [PostgreSQL no Render](https://render.com/docs/databases)
