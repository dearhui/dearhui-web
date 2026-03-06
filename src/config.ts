export const SITE = {
  website: "https://dearhui.pages.dev/",
  author: "Dear Hui",
  profile: "https://dearhui.pages.dev/",
  desc: "記錄 App 開發的過程、AI 工具的實踐，還有一些生活裡值得分享的事。",
  title: "Dear Hui",
  ogImage: "astropaper-og.jpg",
  lightAndDarkMode: true,
  postPerIndex: 4,
  postPerPage: 4,
  scheduledPostMargin: 15 * 60 * 1000, // 15 minutes
  showArchives: true,
  showBackButton: true,
  editPost: {
    enabled: false,
    text: "",
    url: "",
  },
  dynamicOgImage: true,
  dir: "ltr",
  lang: "zh-TW",
  timezone: "Asia/Taipei",
} as const;
