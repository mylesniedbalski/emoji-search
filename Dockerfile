FROM registry1.dso.mil/ironbank/opensource/nodejs/nodejs18:18.12.0
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
