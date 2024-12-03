FROM node:lts-slim

EXPOSE 3000
WORKDIR /home/vvillasor/node-webapp
RUN <<EOF
npm install
EOF

COPY . /home/vvillasor/node-webapp

CMD ["npm", "start"]
