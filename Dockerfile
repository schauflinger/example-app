FROM node: 12.13.1
COPY . .
RUN npm install
EXPOSE 8000
CMD npm start
