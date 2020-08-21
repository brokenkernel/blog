set -xe
cd "$(git rev-parse --show-toplevel)"
cd "blog"

hugo --verbose

cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)" --no-verify
