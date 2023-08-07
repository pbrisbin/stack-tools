# Stack Tools

A growing collection of ancillary tools wrapping [The Haskell Tool
Stack][stack].

[stack]: https://docs.haskellstack.org/en/stable/

## The Tools

### `stack-build-all`

**Why**: building across a large set of resolvers on CI is great, but waiting
for CI to verify things is slow. This script is a push-button way

### `stack-install-from`

### `stack-ls-snapshots`

### `stack-repvp`

## Install

### From GitHub Release

TODO

### Development Symlinks

`make link` will symlink each of `bin/*` into `~/.local/bin`, which you are
expected to have on `$PATH`. This can be useful if you plan to modify the
scripts, or use `git pull` to receive updates.

```console
git clone https://github.com/pbrisbin/stack-tools && cd stack-tools && make link
```

---

[LICENSE](./LICENSE)
