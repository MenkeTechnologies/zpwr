# ZPWR docs tree

This directory holds the **ZPWR Encyclopedia** wizard pages. The typeset
encyclopedia (LaTeX source, PDF, and the generation pipeline) is a paid product
and lives in the private `menke-books` repo, not here.

| Path | Role |
|------|------|
| `wizard_pages/page_*.zsh` | Interactive `zpwr wizard` / `zpwr study` page bodies (validated with `zsh -n` in tests). Some intro pages use `${#ZPWR_VERBS}` so verb totals stay aligned with `env/zpwr.zsh` at runtime. |

**CI:** The GitHub Actions workflow runs the full zunit suite (`zunit --verbose tests/*.zsh`) on Ubuntu with dependencies listed in the repository **Diagnostics** section of the top-level `README.md` (`.github/workflows/ci.yml`). Extra integration checks for the docs tree and autoload syntax live in `tests/t-lib-batch15.zsh` through `tests/t-lib-batch86-r4.zsh` (see **Diagnostics** in the top-level `README.md` for **emacs/vim/zsh** verb clusters, **fzf**/**comp_utils** autoload **`zsh -n`**, **into-fzf**/**kill**/**paste**/**resolve**/**travis**/**env**/**locate**/**git**/**GitHub**/**trace**/**bench**/**matrix**/**pathaudit**/**history**/**cat**/**jenv** verb groups, and related **`zsh -n`** spot checks).
