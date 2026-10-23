# 共有シングルトンクラス：動的なグローバル変数

Introduction to Shared Singleton Class: Dynamic Global Variables (4D Technical Note 25-04): Japanese edition.

4D 20 R5で導入された共有クラスとシングルトンクラスの基礎から、両者を組み合わせた共有シングルトンクラスまでを解説するテクニカルノートの日本語版です。共有シングルトンクラスを使って、すべてのプロセスから安全に読み書きできる「動的なグローバル変数」を実装する方法を、インタープロセス変数との比較を交えて紹介します。付属のデモアプリケーションでは、起動時の初期化、スカラー・オブジェクト・コレクションの値が、CALL WORKERで作成した別のプロセスからどのように更新されるかを、デバッガーで確認できます。

This is the Japanese edition of 4D Technical Note 25-04. It explains shared classes, singleton classes and shared singleton classes, and shows how to use a shared singleton class as a store of dynamic global variables that every process can read and update safely. The demo shows start-up initialisation and how scalar, object and collection globals change across processes.

## Download

| | |
|---|---|
| PDF (Japanese) | [25-04_SharedSingletonClass_ja.pdf](https://github.com/miyako/SharedSingletonClass/releases/latest/download/25-04_SharedSingletonClass_ja.pdf) |
| 4D demo | [SharedSingletonClass.zip](https://github.com/miyako/SharedSingletonClass/releases/latest/download/SharedSingletonClass.zip) |
| Original (English) | `document/25-04_SharedSingletonClass.pdf` |

## Demo

- 4D version: 4D 20 R7 or later. The original demo targets 20 R5; the localised alerts use the `Localized string` command (named `Get localized string` before 20 R7).
- Open `demo/SharedSingletonClass/Project/SharedSingletonClass.4DProject`.
- Languages: English, Japanese. The UI follows the system language; the XLIFF files are in `Resources/<lang>.lproj/`.
- On startup, the `GlobalVars` shared singleton is initialised from `Resources/info.txt`, the file is shown on disk, and a welcome alert lists the global variables. Then run `_create_vals`, `_build_car` or `_pick_fruits` and watch the expressions in the debugger.

### Demo data

The start-up values in `Resources/info.txt` were changed from Paris to Tokyo: `city` is `"Tokyo"`, the new `cityJA` is `"東京"` (shown when 4D runs in Japanese) and `dept` is `13`, Tokyo's prefecture code. The original file is kept in `data/paris/info.txt`. The other sample values (Fiat Panda, apple/orange/cherry, foo/bar) are unchanged.

## Differences from the original

- The cover shows the title and author only; the technical note number is not repeated.
- The table of contents is regenerated from the headings.
- Figure 1: the title "Shared Singleton" is translated (共有シングルトン); the process labels P1/P2 are unchanged.
- Code samples are identical to the original, including comments and alert text.
- Demo: the welcome alert and the `GlobalVars.assign` alerts are localised with XLIFF (English and Japanese), and the start-up data is Tokyo instead of Paris. As a result, the alert text in the demo differs from the code samples printed in the note.

## Editing and rebuilding

The PDF is generated from plain-text sources. Edit them and run `make`.

| File | What |
|---|---|
| `src/ja.md` | Translated body text. **Don't touch code blocks** (`make check` verifies them). |
| `figures/fig-NN.ja.txt` | Text drawn in figure NN. Line N corresponds to line N of `fig-NN.en.txt`: an identical line keeps the original, an empty line erases it. |
| `figures/layout/fig-NN.json` | Per-label overrides for size, weight, alignment and position; `"replace"` uses a ready-made image |
| `glossary.md` | Terminology |

```sh
make            # check → figures → build/25-04_SharedSingletonClass_ja.pdf
make check      # code blocks unchanged, figure references complete
make review     # contact sheets of the figures (build/contact-N.png)
make release-assets
```

Requirements: Python 3, Google Chrome, CJK fonts, and Tesseract (only needed for re-extraction).
See the [localisation template](https://github.com/miyako/4d-technote-localisation-template) for the full workflow.

## Credits

- Original: Nhat Do, Technical Services Engineer, 4D Inc. (Technical Note 25-04)
- Produced with [4d-technote-localisation-template](https://github.com/miyako/4d-technote-localisation-template) and GitHub Copilot.
