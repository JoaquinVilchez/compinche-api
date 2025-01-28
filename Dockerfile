# Imagen base de Node.js
FROM node:18-alpine

# Definir directorio de trabajo
WORKDIR /compinche-api

# Copiar archivos de configuración
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el código fuente
COPY . .

# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando para ejecutar el proyecto en modo desarrollo
CMD ["npm", "run", "start:dev"]