FROM registry1.dso.mil/ironbank/opensource/calico/node:v3.24.4
WORKDIR /app
COPY package.json .
RUN yum install nodejs -y
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
