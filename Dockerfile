FROM node:lts AS build
WORKDIR /app
COPY . .
RUN corepack enable
RUN pnpm install --prod --frozen-lockfile
RUN pnpm run build

FROM httpd:2.4 AS runtime
COPY --from=build /app/dist /usr/local/apache2/htdocs/
EXPOSE 80
