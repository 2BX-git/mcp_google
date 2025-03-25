# Usar imagem Node.js oficial
FROM node:18

# Definir diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos do projeto MCP para o container
COPY package.json package-lock.json ./
RUN npm install

# Copiar todo o código-fonte para dentro do container
COPY . .

# Expor a porta 3000 (ou outra configurada no MCP)
EXPOSE 3000

# Comando para iniciar o servidor MCP
CMD ["node", "server.js"]
