// @ts-check
import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';

import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: "https://oreh.uk",
  integrations: [mdx(), sitemap()],
  // Astro 7 defaults to JSX whitespace rules, which drops spaces between inline elements.
  compressHTML: true,
});
