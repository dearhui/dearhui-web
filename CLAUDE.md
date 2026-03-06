# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Dear Hui 個人網站 — 使用 Astro 框架 + AstroPaper 主題建構的靜態網站，部署於 Cloudflare Pages (`https://dearhui.pages.dev`)。網站語言為繁體中文。

## Commands

- `make dev` — 啟動開發伺服器
- `make build` — 建置靜態網站（含 astro check、pagefind 搜尋索引）
- `make preview` — 預覽建置結果

## Architecture

Astro 5 靜態網站 + AstroPaper v5 主題，使用 Tailwind CSS v4 和 TypeScript strictest 設定。

### 設定檔
- `src/config.ts` — 網站全域設定（標題、作者、語言、時區等）
- `src/constants.ts` — 社群連結、分享連結設定
- `astro.config.ts` — Astro 設定（Tailwind、Sitemap、Markdown plugins）

### 頁面與路由
- `src/pages/index.astro` — 首頁（顯示最新文章）
- `src/pages/posts/[...page].astro` — 文章列表（分頁）
- `src/pages/posts/[...slug]/index.astro` — 文章詳細頁
- `src/pages/tags/index.astro` — 標籤列表
- `src/pages/tags/[tag]/[...page].astro` — 按標籤篩選文章
- `src/pages/search.astro` — 搜尋頁（Pagefind）
- `src/pages/archives/index.astro` — 文章歸檔
- `src/pages/about.md` — 關於頁面
- `src/pages/rss.xml.ts` — RSS feed
- `src/pages/robots.txt.ts` — robots.txt

### 佈局
- `src/layouts/Layout.astro` — 基礎 HTML 佈局
- `src/layouts/Main.astro` — 主要內容佈局
- `src/layouts/PostDetails.astro` — 文章詳細佈局
- `src/layouts/AboutLayout.astro` — 關於頁面佈局

### 內容集合
- `src/content.config.ts` — 定義 `blog` 集合，使用 glob loader 讀取 `src/data/blog/*.md`
- Blog frontmatter schema: `title`, `description`, `pubDatetime`, `modDatetime?`, `author`, `featured?`, `draft?`, `tags`, `ogImage?`

### 樣式
使用 Tailwind CSS v4，全域樣式在 `src/styles/global.css` 和 `src/styles/typography.css`。支援亮色/暗色模式。
