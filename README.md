# Homebrew Tap for Publican

This tap provides the Homebrew cask for [Publican](https://github.com/anddav123/Publican), a native macOS GUI for Homebrew.

## Install

```bash
brew tap anddav123/publican
brew install --cask publican
```

Or install directly:

```bash
brew install --cask anddav123/publican/publican
```

## First Launch On macOS

Publican is currently an unsigned alpha build. macOS may require right-click > Open the first time you launch it.

On some Macs, the cask install may be blocked with a warning such as:

```text
Publican.app is damaged and can't be opened. You should move it to the Bin.
```

For this alpha build, remove the quarantine flag manually before launching:

```bash
xattr -dr com.apple.quarantine /Applications/Publican.app
open /Applications/Publican.app
```

This is a temporary workaround for unsigned releases downloaded from GitHub. Long term, Publican should be signed and notarised with an Apple Developer ID certificate so this step is not needed.

## Build From Source

Users who prefer the free/open-source route can build Publican locally instead of installing the downloaded cask:

```bash
git clone https://github.com/anddav123/Publican.git
cd Publican
./scripts/build-app.sh
cp -R .build/Publican.app /Applications/Publican.app
open /Applications/Publican.app
```

Building locally avoids running the downloaded release bundle, although the app is still unsigned. macOS may still require right-click > Open the first time.

## Update

```bash
brew update
brew upgrade --cask publican
```

For source builds, pull the latest code and rebuild:

```bash
cd Publican
git pull
./scripts/build-app.sh
cp -R .build/Publican.app /Applications/Publican.app
```
