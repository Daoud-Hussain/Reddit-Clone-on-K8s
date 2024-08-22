FROM node:19-alpine3.15

WORKDIR /reddit-clone

COPY . /reddit-clone

# Use --legacy-peer-deps to avoid dependency conflicts
RUN npm install --legacy-peer-deps

EXPOSE 3000

CMD ["npm", "run", "dev"]
