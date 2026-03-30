import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";
import sitemap from "@astrojs/sitemap";

export default defineConfig({
    site: "https://trashtruck.dearhui.com",
    integrations: [sitemap()],
    vite: {
        // @ts-ignore — Astro/Vite type mismatch, fixed in Astro 6
        plugins: [tailwindcss()],
    },
});
