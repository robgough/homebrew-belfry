# homebrew-belfry

A [Homebrew](https://brew.sh) tap for [**Belfry**](https://belfry.robgough.net) —
a native macOS/iPadOS front-end for real tmux.

## Install

```sh
brew install --cask robgough/belfry
```

That's it — Homebrew taps this repo automatically on first use. To update:

```sh
brew upgrade --cask belfry
```

(Belfry also updates itself in-app via Sparkle, so either path keeps you current.)

## Uninstall

```sh
brew uninstall --cask belfry          # remove the app
brew uninstall --zap --cask belfry    # also remove settings, caches, saved hosts
```

Saved host secrets live in the macOS Keychain and are left untouched by `--zap`;
remove them via Keychain Access if you want a truly clean slate.

## What this installs

The notarized, universal (arm64 + x86_64) `Belfry.app`, macOS 14 (Sonoma) or
later. `tmux` is pulled in as a dependency for driving local sessions. Source,
issues, and releases live in the [main repo](https://github.com/robgough/belfry).
