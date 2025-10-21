---

## 🧠 Custom Collapsible Regions in CSS (VS Code Guide)

### 📘 Overview

You know how long CSS files can get messy, right?
This guide shows you how to add **collapsible code regions** in Visual Studio Code —
so you can fold sections like “Buttons”, “Typography”, or “Layout” with a single click.

---

### 💬 Step 1: Write Your Regions

Just wrap any block of CSS inside these special comments:

```css
/* #region Typography */
body {
  font-family: 'Inter', sans-serif;
}
/* #endregion */

/* #region Buttons */
button {
  background: #0078ff;
  color: white;
}
/* #endregion */
```

Everything between `#region` and `#endregion` becomes **foldable**.

---

### ⚙️ Step 2: Enable Region Folding

Create this folder in your project (if it doesn’t exist):

```
.vscode/
```

Inside it, create a file called:

```
language-configuration.json
```

Paste this:

```json
{
  "folding": {
    "markers": {
      "start": "^\\s*/\\*\\s*#region\\b.*\\*/",
      "end": "^\\s*/\\*\\s*#endregion\\b.*\\*/"
    }
  }
}
```

💡 *This tells VS Code to treat `/* #region */` and `/* #endregion */` as foldable markers.*

---

### 🧰 Step 3: Make Folding Always Visible

Open your **Settings (JSON)**:
`Ctrl + Shift + P` → `Preferences: Open Settings (JSON)`

Add this:

```json
{
  "editor.folding": true,
  "editor.foldingStrategy": "auto",
  "editor.showFoldingControls": "always",
  "editor.unfoldOnClickAfterEndOfLine": true
}
```

Now the little arrow icons for folding will always show up.

---

### 🌈 Step 4: (Optional) Make It Look Nicer

Install these extensions:

| Extension                | What It Does                                |
| ------------------------ | ------------------------------------------- |
| **Better Comments**      | Colors your region markers so they pop out. |
| **Code Folding Regions** | Adds region support for *all* languages.    |
| **Fold Level**           | Fold all at once by indentation.            |

---

### 💡 Example: Organized CSS File

```css
/* #region Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
/* #endregion */

/* #region Typography */
h1, h2, h3 {
  font-weight: 700;
}
body {
  font-family: 'Inter', sans-serif;
}
/* #endregion */

/* #region Buttons */
button.primary {
  background: #0078ff;
  color: white;
}
button.primary:hover {
  background: #005bd1;
}
/* #endregion */
```

You can collapse everything except what you’re working on —
your file stays clean, focused, and easy to navigate. ✨

---

### 🔄 Step 5: Fold & Unfold Shortcuts

| Action            | Shortcut (Windows/Linux) | Shortcut (Mac)     |
| ----------------- | ------------------------ | ------------------ |
| Fold all          | `Ctrl + K Ctrl + 0`      | `Cmd + K Cmd + 0`  |
| Unfold all        | `Ctrl + K Ctrl + J`      | `Cmd + K Cmd + J`  |
| Fold one region   | `Ctrl + Shift + [`       | `Cmd + Option + [` |
| Unfold one region | `Ctrl + Shift + ]`       | `Cmd + Option + ]` |

---

### 🏁 Done!

You now have a **custom folding setup** that works perfectly for CSS (and even SCSS).
It’s simple, light, and 100% local — no extensions required (though you can enhance it).

---

### 📦 Folder Structure Example

```
my-project/
├── .vscode/
│   ├── language-configuration.json
│   └── settings.json
└── styles/
    └── main.css
```

---

### 👨‍💻 Author Notes

> “If you spend more time scrolling than coding,
> it’s time to start folding.”
> — A developer who’s seen one too many 2000-line CSS files 😅

---

### 🧷 Keywords for Search

`vs code folding css`, `vscode region comments`, `custom region folding`, `css #region vscode`, `collapse css sections`

---
