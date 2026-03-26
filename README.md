# 🤖 Assistant IA Local — 100% navigateur, zéro serveur

Un assistant IA conversationnel qui tourne **entièrement dans votre navigateur**, sans installation, sans GPU dédié et sans envoyer la moindre donnée à l'extérieur.

[![Made with WebGPU](https://img.shields.io/badge/WebGPU-enabled-blue)](https://developer.chrome.com/docs/web-platform/webgpu)
[![No server](https://img.shields.io/badge/backend-none-green)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)]()

---

## ✨ Fonctionnalités

- 💬 **Chat IA** — Conversations fluides avec un LLM (Qwen2.5-1.5B) tournant localement via WebLLM
- 📎 **Analyse de documents** — Chargez un PDF, Word, Excel, image ou fichier texte pour l'analyser directement
- 🧠 **Mémoire vectorielle (RAG)** — Indexez des documents en local et interrogez-les via un mode "Focus"
- 🎤 **Dictée vocale** — Saisie par micro (Web Speech API)
- 🔊 **Lecture à voix haute** — Synthèse vocale des réponses
- 🌙 **Thème clair / sombre**
- 💾 **Historique des sessions** — Sauvegardé dans le `localStorage`
- 📤 **Export des conversations** en `.txt`
- ⚡ **Actions magiques** — Résumé, correction, reformulation, analyse critique en un clic

---

## 🛠️ Technologies

| Composant | Technologie |
|---|---|
| Modèle LLM | [WebLLM](https://webllm.mlc.ai/) — Qwen2.5-1.5B-Instruct (q4f16) |
| Accélération | WebGPU (natif navigateur) |
| Embeddings RAG | Transformers.js |
| OCR | Tesseract.js |
| Lecture PDF | PDF.js |
| Lecture Word | Mammoth.js |
| Lecture Excel | SheetJS |
| Rendu Markdown | Marked.js |
| Sécurité HTML | DOMPurify |

---

## 🚀 Utilisation

Aucune installation requise. Il suffit d'ouvrir le fichier `index.html` dans un navigateur compatible.

```bash
# Option 1 — Ouvrir directement
open index.html

# Option 2 — Servir localement (recommandé pour les performances)
npx serve .
# ou
python -m http.server 8080
```

> **Note :** Un serveur local est recommandé car certains navigateurs bloquent les ressources WebGPU sur les URL `file://`.

---

## ✅ Compatibilité

| Navigateur | Support |
|---|---|
| Chrome / Chromium 113+ | ✅ Complet |
| Edge 113+ | ✅ Complet |
| Firefox | ❌ WebGPU non supporté |
| Safari (macOS 14+) | ⚠️ Partiel |

---

## 📦 Structure

```
index.html   ← Tout le projet tient en un seul fichier
```

Aucune dépendance locale. Toutes les bibliothèques sont chargées depuis des CDN publics.

---

## 🔒 Confidentialité

Toutes les données (conversations, documents, embeddings) restent **exclusivement sur votre machine**. Aucune donnée n'est transmise à un serveur externe. Le modèle est téléchargé une seule fois puis mis en cache par le navigateur.

---

## 📄 Licence

MIT — libre d'utilisation, de modification et de distribution.
