cask "cli-manager" do
  version "1.2.4"
  sha256 "bff73d9e02858f22c81189ec1149f5e135fae03d696a17555c4f875a6e680e59"

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
