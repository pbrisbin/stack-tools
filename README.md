# Stack Tools

A growing collection of ancillary tools wrapping [The Haskell Tool
Stack][stack].

[stack]: https://docs.haskellstack.org/en/stable/

## The Tools

### `stack-build-all`

Run a `stack build` with every `stack-*.yaml` file present, or generate and
build a `stack-lts-*.yaml` file for every major GHC version.

This can be useful to locally run your CI matrix for faster feedback.

### `stack-install-from`

Install a compiler-tool binary from any stackage snapshot and copy it into the
compiler-tools bin location of your current snapshot.

This can be useful to install a newer version of something not available for
your resolver or GHC, but that will still function when used with your code,
such as an auto-formatter.

Example:

```console
stack install-from -r nightly-2023-06-26 fourmolu-0.13.0.0
```

### `stack-ls-snapshots`

```console
% stack ls-snapshots -h
Usage: stack-ls-snapshots [option...]
Print Stackage Snapshots by GHC version

Options:
  --lts                 Fetch LTS Snapshots (this is the default)

  --nightly             Fetch Nightly Snapshots

  --ghc-major           Truncate GHC versions to Major before sort/unique

  --ghc-minor           Truncate GHC versions to Minor before sort/unique (this
                        is the default)

  --ghc-patch           Don't truncate GHC versions before sort/unique

  --first               Print the first (oldest) Snapshot to contain that GHC

  --last                Print the last (newest) Snapshots to contain that GHC
                        (this is the defuault)

  --printf FMT          A printf formatting string to use when printing. The
                        arguments are resolver then GHC, default is "%s,%s\n"
```

Example:

```console
% stack ls-snapshots
lts-21.6,9.4
lts-20.26,9.2
lts-19.33,9.0
lts-18.28,8.10
lts-16.31,8.8
lts-14.27,8.6
lts-12.26,8.4
lts-11.22,8.2
lts-9.21,8.0
lts-6.35,7.10
lts-2.22,7.8
```

### `stack-repvp`

Push new revisions to a package built with different `--pvp-bounds`.

This can be useful because `stack sdist --pvp-bounds lower` was broken for many
versions of stack. This script will go back and add the proper bounds as
revisions, if necessary.

## Install

### From GitHub Release

TODO.

### Development Symlinks

`make link` will symlink each of `bin/*` into `~/.local/bin`, which you are
expected to have on `$PATH`. This can be useful if you plan to modify the
scripts, or use `git pull` to receive updates.

```console
git clone https://github.com/pbrisbin/stack-tools
cd stack-tools
make link
```

---

[LICENSE](./LICENSE)
