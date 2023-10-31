set -xe
cd "$(git rev-parse --show-toplevel)"
cd "blog"

hugo --logLevel info

(
  cd public
  git add --all
  git commit -m "Publishing to gh-pages (publish.sh)" --no-verify || true
  git push
)
