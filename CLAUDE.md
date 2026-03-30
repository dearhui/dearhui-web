# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Dear Hui Studio App 頁面 — 多站架構，每個 App 各自 subdomain，部署於 Cloudflare Pages。

| Domain | 目錄 | 用途 |
|--------|------|------|
| `dearhui.com` | `sites/main` | App 作品集入口 |
| `clinic.dearhui.com` | `sites/clinic` | 看診進度助手（隱私政策、使用條款） |
| `trashtruck.dearhui.com` | `sites/trashtruck` | 台灣垃圾通（隱私政策、客服支援） |

## Commands

- `make dev-main` — 啟動 main site 開發伺服器
- `make dev-clinic` — 啟動 clinic site 開發伺服器
- `make dev-trashtruck` — 啟動 trashtruck site 開發伺服器
- `make build-all` — 建置所有站點

## Architecture

每個 site 是獨立的 Astro 5 + Tailwind CSS 4 專案，位於 `sites/` 目錄下。各站互不影響，各自有 `package.json`、`astro.config.ts`。

Cloudflare Pages 各建一個專案，指向同一 GitHub repo 的不同 root directory。

## 新增 App

1. 複製 `sites/clinic` 到 `sites/new-app`
2. 修改 `AppLayout.astro` 中的 `appName`、`astro.config.ts` 中的 `site`
3. 新增 Cloudflare Pages 專案，root directory 設為 `sites/new-app`
4. 在 `sites/main` 首頁加上新 App 卡片
