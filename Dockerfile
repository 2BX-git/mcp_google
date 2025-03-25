# Definir diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos essenciais primeiro (para otimizar cache)
COPY package.json package-lock.json ./

# Instalar dependências
RUN npm install

# Copiar todo o código do projeto
COPY . .

# Expor a porta do servidor MCP
EXPOSE 3000

# Comando para rodar o servidor
CMD ["node", "server.js"]
