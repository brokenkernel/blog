set -x
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

git worktree add -B gh-pages public origin/gh-pages

rm -rf public/*

hugo

cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)" --no-verify
