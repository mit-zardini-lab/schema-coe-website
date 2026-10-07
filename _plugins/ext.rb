# Hosts such as Vercel run the build without a locale (no LANG/LC_ALL), so
# Ruby's default external encoding falls back to US-ASCII. jekyll-scholar and
# bibtex-ruby read the .bib files with that default and then fail with
# "invalid byte sequence in US-ASCII" on any accented name or en-dash.
# Jekyll's own file reads already force UTF-8 via `encoding:` in _config.yml;
# this makes every other read in the build do the same.
Encoding.default_external = Encoding::UTF_8

require "jekyll/scholar"
