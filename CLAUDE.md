# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Dear Hui 個人網站 — 使用 Astro 框架建構的靜態網站，部署於 Cloudflare Pages (`https://dearhui.pages.dev`)。網站語言為繁體中文。

## Commands

- `make dev` — 啟動開發伺服器
- `make build` — 建置靜態網站
- `make preview` — 預覽建置結果

## Architecture

Astro 5 靜態網站，使用 TypeScript strictest 設定。

### 頁面與路由
- `src/pages/index.md` — 首頁（Markdown + HomePage layout）
- `src/pages/blog/index.astro` — 部落格文章列表
- `src/pages/blog/[id].astro` — 部落格文章頁（靜態路由，透過 `getStaticPaths` 生成）

### 佈局
- `src/layouts/BaseLayout.astro` — 基礎 HTML 佈局（含 Open Graph meta、Google Fonts Inter）
- `src/layouts/HomePage.astro` — 首頁佈局（從 frontmatter 讀取 greeting、name、role、links）
- `src/layouts/BlogPost.astro` — 部落格文章佈局（繼承 BaseLayout，含 prose 排版樣式）

### 內容集合
- `src/content.config.ts` — 定義 `blog` 集合，使用 glob loader 讀取 `src/content/blog/*.md`
- Blog frontmatter schema: `title` (string), `description` (string), `date` (date), `tags` (string[], optional)

### 樣式
全站使用 scoped CSS，無 CSS 框架。簡潔專業風格，淺色背景搭配深色文字。
