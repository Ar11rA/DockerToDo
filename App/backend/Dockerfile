FROM node:7.4.0
ADD /serverToDo.js /dbSequelize.js /package.json /taskdata.sql /app/
WORKDIR /app
RUN npm install --production
CMD node serverToDo.js