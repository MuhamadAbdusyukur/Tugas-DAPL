# Stage 1: Build the application
FROM node:20-alpine as build

WORKDIR /src/app
COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Stage 2: Create a minimal production image
FROM node:20-alpine

WORKDIR /src/app

COPY --from=build /src/app/dist ./dist

CMD ["node", "dist/main.js"]
