# 🤖 Local AI Assistant — 100% in-browser, zero server

A conversational AI assistant that runs **entirely in your browser** — no installation, no dedicated GPU, and no data ever leaves your machine.

[![Made with WebGPU](https://img.shields.io/badge/WebGPU-enabled-blue)](https://developer.chrome.com/docs/web-platform/webgpu)
[![No server](https://img.shields.io/badge/backend-none-green)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)]()

---

## ✨ Features

- 💬 **AI Chat** — Fluid conversations powered by a LLM (Qwen2.5-1.5B) running locally via WebLLM
- 📎 **Document analysis** — Upload a PDF, Word, Excel, image or text file and query it directly
- 🧠 **Vector memory (RAG)** — Index documents locally and interrogate them with a dedicated "Focus" mode
- 🎤 **Voice input** — Dictation via microphone (Web Speech API)
- 🔊 **Text-to-speech** — AI responses read aloud
- 🌙 **Light / dark theme**
- 💾 **Session history** — Persisted in `localStorage`
- 📤 **Export conversations** as `.txt`
- ⚡ **Magic actions** — One-click summarize, correct, rewrite, or critically analyze any text

---

## 🛠️ Tech stack

| Component | Technology |
|---|---|
| LLM engine | [WebLLM](https://webllm.mlc.ai/) — Qwen2.5-1.5B-Instruct (q4f16) |
| Acceleration | WebGPU (native browser API) |
| RAG embeddings | Transformers.js |
| OCR | Tesseract.js |
| PDF parsing | PDF.js |
| Word parsing | Mammoth.js |
| Excel parsing | SheetJS |
| Markdown rendering | Marked.js |
| HTML sanitization | DOMPurify |

---

## 🚀 Getting started

No installation needed. Just open `index.html` in a supported browser.

```bash
# Option 1 — Open directly
open index.html

# Option 2 — Serve locally (recommended for best performance)
npx serve .
# or
python -m http.server 8080
```

> **Note:** A local server is recommended as some browsers restrict WebGPU access on `file://` URLs.

---

## ✅ Browser compatibility

| Browser | Support |
|---|---|
| Chrome / Chromium 113+ | ✅ Full |
| Edge 113+ | ✅ Full |
| Firefox | ❌ WebGPU not supported |
| Safari (macOS 14+) | ⚠️ Partial |

---

## 📦 Project structure

```
index.html   ← The entire project in a single file
```

No local dependencies. All libraries are loaded from public CDNs.

---

## 🔒 Privacy

All data — conversations, documents, and embeddings — stays **exclusively on your machine**. Nothing is ever sent to an external server. The model is downloaded once and then cached by the browser for offline use.

---

## 📄 License

MIT — free to use, modify and distribute.
