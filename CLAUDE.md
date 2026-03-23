# CLAUDE.md — AI Assistant Guide for personal-site

## Project Overview

This is a personal portfolio and CV website for Lorin Werthen, built with **Nanoc** (Ruby-based static site generator). It produces a static HTML site with blog support and a PDF CV generated via XeLaTeX.

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Static site generator | Nanoc 4.12.3 |
| Language | Ruby 2.4.0 |
| CSS preprocessing | SASS/SCSS |
| Markdown | Kramdown + Typogruby |
| PDF generation | XeLaTeX via custom filter |
| Format conversion | Pandoc |
| Build environment | Nix (reproducible builds) |
| Dev watching | Guard + guard-nanoc |

## Repository Structure

```
personal-site/
├── content/               # All site content
│   ├── index.erb          # Homepage template
│   ├── cv.erb             # CV page template
│   ├── blog/              # Blog posts (Markdown with YAML front matter)
│   ├── cv/                # CV data files and PDF generation
│   │   ├── education/     # Education entry (education.md)
│   │   ├── experience/IT/ # Work experience entries (numbered for sort order)
│   │   ├── skills.md      # Skills database (YAML front matter)
│   │   ├── cv.erb         # CV rendering template
│   │   └── pdf/           # XeLaTeX template + fonts
│   └── stylesheets/       # SCSS files
│       ├── main.scss       # Entry point
│       ├── _mixins.scss    # Mixins (mobile breakpoint)
│       └── components/    # Per-component SCSS files
├── layouts/
│   ├── default.erb        # Base HTML5 layout (meta, fonts, CSS)
│   └── blog.erb           # Blog post layout (navbar, KaTeX, syntax highlight)
├── lib/
│   ├── helpers/cv_data.rb     # CVDataHelper module
│   ├── filters/xetex_filter.rb  # XeLaTeX PDF generation filter
│   ├── filters/md_to_tex.rb    # Markdown → LaTeX via Pandoc
│   ├── deployers/multiple.rb   # Multi-target parallel deployer
│   ├── deployers/ipfs.rb       # IPFS deployer
│   └── helpers_.rb             # Includes all helpers
├── Rules                  # Nanoc compilation + routing rules
├── nanoc.yaml             # Main Nanoc config + deployment targets
├── Gemfile / Gemfile.lock # Ruby dependencies
├── Guardfile              # File-watch config
├── default.nix            # Nix build derivation
├── shell.nix              # Nix dev shell
└── packages.nix           # Nix package deps (Ruby gems, XeLaTeX, Pandoc)
```

## Development Commands

```bash
nanoc                  # Compile site → output/
nanoc view             # Serve locally (default: http://localhost:3000)
guard                  # Watch for changes and auto-recompile
nanoc check            # Validate internal/external links
```

### Deployment

```bash
nanoc deploy default   # Deploy to GitHub Pages (gh-pages branch)
nanoc deploy ipfs      # Publish to IPFS
nanoc deploy public    # rsync to remote server (ansem:/var/www/html, SSH port 15259)
nanoc deploy all       # Deploy to all targets in parallel
```

### Nix-based builds

```bash
nix-shell              # Enter reproducible dev environment
nix-build              # Build site reproducibly
```

## Compilation Rules (Rules file)

The `Rules` file controls how Nanoc processes content:

- **HTML/ERB pages**: compiled through the `default.erb` layout with path relativization
- **Blog posts** (`.md` under `/blog/`): `kramdown` → `typogruby` → `blog` layout → `default` layout
- **CV experience/education/skills** (`.md` under `/cv/`): `md_to_tex` filter for LaTeX output
- **CV PDF** (`.tex`): `xetex` filter producing a binary PDF
- **SCSS**: compiled to compressed CSS via `sass` filter
- **Routing**: pretty URLs (`/page/index.html` instead of `/page.html`)

## Content Conventions

### YAML Front Matter

All content files use YAML front matter:

```yaml
---
title: Page Title
key: value
---
Markdown content here
```

### Blog Posts

- Located in `content/blog/`
- Markdown files with front matter
- Rendered with KaTeX (math) and syntax highlighting via the `blog.erb` layout

### CV Experience Entries

Located in `content/cv/experience/IT/`. Files are **numbered for sort order**:

```
0_ghent_university.md   # Multiple "0_" prefix = same display group
0_robovision.md
1_hpc.md
2_sko.md
...
```

The `CVDataHelper#experience_fields` method extracts categories from filenames; `CVDataHelper#experiences(field)` returns sorted entries for a field.

### Skills

`content/cv/skills.md` — nested YAML front matter structure. The `group_skills` helper wraps skill lists at 35 characters per line for LaTeX output.

## Custom Filters

### `xetex` filter (`lib/filters/xetex_filter.rb`)

Generates a PDF from a XeLaTeX template. Copies fonts and `.cls` file to a temp dir, runs `xelatex`, returns PDF binary. Used only for `content/cv/pdf/cv.tex`.

### `md_to_tex` filter (`lib/filters/md_to_tex.rb`)

Converts Markdown to LaTeX using PandocRuby. Used for CV content files before they are embedded into the `.tex` template.

## SCSS Conventions

- **Entry point**: `content/stylesheets/main.scss`
- **Mobile mixin**: `@include mobile { ... }` — targets viewports ≤ 720px (defined in `_mixins.scss`)
- **Components**: one file per component in `components/` subdirectory
- **Framework**: Bulma (included as `bulmaswatch.min.css`)

## Deployment Architecture

| Target | Mechanism | Destination |
|--------|-----------|-------------|
| `default` | Nanoc git deployer | `gh-pages` branch |
| `ipfs` | Custom IPFS deployer | IPFS + remote pin on `merkur` |
| `public` | rsync over SSH | `ansem:/var/www/html` (port 15259) |
| `all` | `multiple` deployer | All of the above, in parallel threads |

Auto-pruning is enabled but excludes `.git` and `CNAME` from deletion.

## Key Helper: CVDataHelper

```ruby
cv_pdf                    # Returns compiled CV PDF item
education_item            # Returns education markdown item
skills_item               # Returns skills markdown item
experience_fields         # Returns distinct experience category names
experiences(field)        # Returns experience items for a given field, sorted
group_skills(input)       # Formats skill list for LaTeX (≤35 chars per line)
```

## Nix Environment

The `packages.nix` file defines the full reproducible environment:
- Ruby gems via `bundlerEnv`
- `pandoc` for Markdown → LaTeX conversion
- `xelatex` with a specific set of TeX packages (scheme-basic, xetex, unicode-math, enumitem, booktabs, ulem, hyperref, xcolor, titlesec, textpos, isodate, xltxtra, realscripts, roboto, substr)
- `terminal-notifier` on macOS only

When adding new TeX packages, update `packages.nix`. When adding Ruby gems, update `Gemfile` then regenerate `gemset.nix` and `Gemfile.lock`.

## Notes for AI Assistants

- **No test suite exists.** Use `nanoc check` for link validation and `nanoc view` to visually verify changes.
- **Ruby 2.4.0** is pinned — avoid syntax or gem features requiring newer Ruby.
- **Content is data-driven.** CV sections are populated from structured Markdown files, not hardcoded in templates. Edit the data files, not the templates, to change content.
- **Ordering is by filename prefix.** Experience entries use numeric prefixes (`0_`, `1_`, etc.) for sort order — preserve this convention when adding entries.
- **PDF generation requires XeLaTeX** to be installed (available via `nix-shell`). The compiled PDF is an output artifact, not a source file.
- **Branch convention**: feature branches follow the pattern `claude/<description>-<id>`.
- **Output directory** (`output/`) is gitignored — never commit it.
