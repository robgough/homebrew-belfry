# homebrew-belfry

A [Homebrew](https://brew.sh) tap for [**Belfry**](https://belfry.robgough.net) —
a native macOS/iPadOS front-end for real tmux.

## Install

```sh
brew tap robgough/belfry
brew install --cask belfry
```

To update later:

```sh
brew upgrade --cask belfry
```

(Belfry also updates itself in-app via Sparkle, so either path keeps you current.)

> **Strict-mode taps.** If you run Homebrew with `HOMEBREW_REQUIRE_TAP_TRUST`
> set, it refuses to load any third-party tap until you trust it. Homebrew will
> tell you; just run `brew trust robgough/belfry` after tapping, then install.

## Uninstall

```sh
brew uninstall --cask belfry          # remove the app
brew uninstall --zap --cask belfry    # also remove settings, caches, saved hosts
brew untap robgough/belfry            # forget the tap
```

Saved host secrets live in the macOS Keychain and are left untouched by `--zap`;
remove them via Keychain Access if you want a truly clean slate.

## What this installs

The notarized, universal (arm64 + x86_64) `Belfry.app`, macOS 14 (Sonoma) or
later. `tmux` is pulled in as a dependency for driving local sessions. Source,
issues, and releases live in the [main repo](https://github.com/robgough/belfry).
