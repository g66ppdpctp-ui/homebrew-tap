# Personal Homebrew Tap

Personal [Homebrew](https://brew.sh) tap for macOS applications built from source or distributed as pre-compiled binaries.

## Usage

```bash
# Add this tap
brew tap g66ppdpctp-ui/tap

# Install an app
brew install --cask codeisland

# Check for updates
brew update        # this will pull your tap too
brew outdated      # sees new versions
brew upgrade       # upgrades everything
```

## Available Casks

| Cask | Description | Source |
|------|------------|--------|
| `rclick` | macOS Finder right-click enhancement | [wflixu/RClick](https://github.com/wflixu/RClick) |
| `codeisland` | Real-time AI coding agent status panel for macOS Dynamic Island (Notch) — auto-built fork | [g66ppdpctp-ui/CodeIsland](https://github.com/g66ppdpctp-ui/CodeIsland) |
| `bilisum` | AI video summarizer and knowledge base tool for Bilibili, YouTube and local videos | [lycohana/BiliSum](https://github.com/lycohana/BiliSum) |
| `cli-manager` | AI CLI workflow manager for Claude Code / Codex CLI | [dark-hxx/CLI-Manager](https://github.com/dark-hxx/CLI-Manager) |

## Adding a New App

1. Create a new `.rb` file in `Casks/`:

```bash
touch Casks/your-app-name.rb
```

2. Use the template below (update version, sha256, url, and description):

```ruby
cask "your-app-name" do
  version "1.0.0"
  sha256 "..."

  url "https://github.com/owner/repo/releases/download/v#{version}/App_v#{version}_aarch64.dmg"
  name "Your App"
  desc "Short description"
  homepage "https://github.com/owner/repo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Your App.app"
end
```

3. Commit and push:

```bash
git add Casks/your-app-name.rb
git commit -m "Add your-app-name v1.0.0"
git push
```

4. Install:

```bash
brew update            # picks up the new formula
brew install --cask your-app-name
```

## Updating a Version

When a new release is published:

1. Download the `.dmg` and compute its SHA256:

```bash
shasum -a 256 /path/to/downloaded.dmg
```

2. Edit the cask file with the new `version` and `sha256`:

```bash
# Update version and sha256 in the .rb file
```

3. Commit and push:

```bash
git commit -am "Update app-name to vX.Y.Z"
git push
```

4. On your machine:

```bash
brew update
brew upgrade --cask your-app-name
```

## Notes

- **Unsigned apps**: These apps aren't Apple-notarized. macOS may show a Gatekeeper warning on first launch. Right-click → Open, or run `xattr -cr /Applications/AppName.app`.
- **Auto-updates**: `codeisland` cask is automatically updated via GitHub Actions when upstream releases a new version. Other casks updated manually.
