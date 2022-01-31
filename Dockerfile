FROM fusuf/whatsasena:latest

RUN git clone https://github.com/basil323/Holy-Bot  /skl/Holy-Bot
WORKDIR /skl/Holy-Bot
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "index.js"]