# ZPWR docs tree

This directory holds the **ZPWR Encyclopedia** sources and generators.

| Path | Role |
|------|------|
| `wizard_pages/page_*.zsh` | Interactive `zpwr wizard` page bodies (validated with `zsh -n` in tests). |
| `genEncyclopediaTex.py` | Generates `zpwr-encyclopedia.tex` (syntax-checked via `python3 -m py_compile` in `tests/t-lib-batch14.zsh`). |
| `regenPDF.sh` | Shell driver for LaTeX/PDF rebuild (`bash -n` covered in `tests/t-lib-batch11.zsh`). |
| `zpwr-encyclopedia.tex` | TeX master (tracked; build artifacts may be gitignored). |

**CI:** The GitHub Actions workflow runs the full zunit suite (`zunit --verbose tests/*.zsh`) on Ubuntu with dependencies listed in the repository **Diagnostics** section of the top-level `README.md` (`.github/workflows/ci.yml`). Extra integration checks for the docs tree and autoload syntax live in `tests/t-lib-batch15.zsh` through `tests/t-lib-batch18.zsh` (see **Diagnostics** in the top-level `README.md` for **emacs/vim/zsh** verb clusters, **fzf**/**comp_utils** autoload **`zsh -n`**, **into-fzf**/**kill**/**paste**/**resolve**/**travis** verb groups, and related **`zsh -n`** spot checks).
