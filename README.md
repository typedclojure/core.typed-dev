# core.typed-dev

Development tools for local dev and running CI jobs on core.typed.

[![CircleCI](https://circleci.com/gh/typedclojure/core.typed-dev.svg?style=svg)](https://circleci.com/gh/typedclojure/core.typed-dev)

## Instructions

Run `./script/clone-all.sh` to clone all core.typed repos into
the current directory.

Run `./script/checkout-branch.sh BRANCH` to checkout a worktree of each
core.typed repo to the git branch `BRANCH` in the `branches/BRANCH` directory.

`./script/status -s` gives a quick overview of all clones.
