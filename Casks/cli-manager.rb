cask "cli-manager" do
  version "1.2.3"
  sha256 "d7597dcfb55da5d7c1aaa9b54d23ff35ab2de77ddeb365e3d8a70ac593adf5a5"

  url "https://github.com/dark-hxx/CLI-Manager/releases/download/V#{version}/CLI-Manager_#{version}_aarch64.dmg"
  name "CLI Manager"
  desc "AI CLI workflow manager for Claude Code and Codex CLI"
  homepage "https://github.com/dark-hxx/CLI-Manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CLI-Manager.app"

  zap trash: [
    "~/Library/Application Support/com.CLI-Manager.app",
    "~/Library/Preferences/com.CLI-Manager.app.plist",
    "~/Library/Saved Application State/com.CLI-Manager.app.savedState",
  ]
end
