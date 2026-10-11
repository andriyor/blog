# astro-blog

Personal blog built with [Astro](https://astro.build), based on the Astro blog template.

- Markdown & MDX posts in `src/content/blog/`
- Image lightbox on posts via [PhotoSwipe](https://photoswipe.com)
- Obsidian base tables synced into `src/data/bases/` with [astro-obsidian-base](https://github.com/andriyor/astro-obsidian-base)
- Sitemap and RSS feed

## Commands

| Command          | Action                                          |
| :--------------- | :---------------------------------------------- |
| `pnpm install`   | Install dependencies                            |
| `pnpm dev`       | Start dev server at `localhost:4321`            |
| `pnpm build`     | Type-check and build the site to `./dist/`      |
| `pnpm preview`   | Preview the build locally                       |
| `pnpm sync-base` | Sync Obsidian base data                         |

## Credit

This theme is based off of the lovely [Bear Blog](https://github.com/HermanMartinus/bearblog/).

## Deploy

### Docker

The `Dockerfile` builds the site and serves `dist/` with Apache httpd on port 80.

Build the image

```sh
docker build -t astro-blog .
```

Run

```sh
docker run -d --name blog --restart unless-stopped -p 8080:80 astro-blog
```

### rsync (build locally, no build on the server)

Build

```sh
pnpm run build
```

Copy build files to server

```sh
rsync -av ./dist username@remote-server-ip:/path/to/remote/destination/
```

Install static file server

```sh
npm i -g serve
```

Run

```sh
pm2 start 'serve -p 8080 ~/apps/astro-blog/dist' --name blog
```
