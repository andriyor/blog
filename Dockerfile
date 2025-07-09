FROM node:lts AS build
WORKDIR /app
COPY . .
RUN corepack enable && corepack prepare pnpm@latest --activate
RUN pnpm install --ignore-scripts
RUN pnpm run build

FROM httpd:2.4 AS runtime
COPY --from=build /app/dist /usr/local/apache2/htdocs/
EXPOSE 80
