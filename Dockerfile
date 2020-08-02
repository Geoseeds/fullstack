# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn
COPY . .
# ENV NODE_ENV=production # TODO
RUN yarn build

# production stage
FROM nginx:stable-alpine
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
