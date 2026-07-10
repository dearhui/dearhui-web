# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Dear Hui Studio App 頁面 — 多站架構，每個 App 各自 subdomain，部署於 Cloudflare Pages。

| Domain | 目錄 | 用途 |
|--------|------|------|
| `dearhui.com` | `sites/main` | 個人網站 & App 作品集入口 |
| `clinic.dearhui.com` | `sites/clinic` | 看診進度助手（landing page、隱私政策、使用條款） |
| `trashtruck.dearhui.com` | `sites/trashtruck` | 台灣垃圾通（landing page、隱私政策、客服支援） |
| `myfunds.dearhui.com` | `sites/myfunds` | 基金看板（landing page、隱私政策） |
| `twetf.dearhui.com` | `sites/twetf` | 台股ETF（landing page、隱私政策）；direct-upload 專案，發布用 `make deploy-twetf` |

## Commands

- `make dev-main` — 啟動 main site 開發伺服器
- `make dev-clinic` — 啟動 clinic site 開發伺服器
- `make dev-trashtruck` — 啟動 trashtruck site 開發伺服器
- `make dev-myfunds` — 啟動 myfunds site 開發伺服器
- `make dev-twetf` — 啟動 twetf site 開發伺服器
- `make deploy-twetf` — 建置並發布 twetf（direct-upload，見下）
- `make build-all` — 建置所有站點

## Architecture

每個 site 是獨立的 Astro 5 + Tailwind CSS 4 專案，位於 `sites/` 目錄下。各站互不影響，各自有 `package.json`、`astro.config.ts`。

Cloudflare Pages 各建一個專案，指向同一 GitHub repo 的不同 root directory。

**例外：`dearhui-twetf` 是 direct-upload 專案**（2026-07-10 由 wrangler 建，非 git-integrated）——push 不會自動部署，改動後要跑 `make deploy-twetf`。若要改成 git-integrated 需在 dashboard 刪掉重建同名專案。

## 新增 App

1. 複製 `sites/clinic` 到 `sites/new-app`
2. 修改 `AppLayout.astro` 中的 `appName`、`astro.config.ts` 中的 `site`
3. 新增 Cloudflare Pages 專案，root directory 設為 `sites/new-app`
4. 在 `sites/main` 首頁加上新 App 卡片
