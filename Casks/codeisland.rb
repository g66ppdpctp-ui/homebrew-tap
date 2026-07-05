cask "codeisland" do
  version "1.0.28"
  sha256 "8f8053c3332f017b57797cc178646c3cf6b9705aa62977448ff512bb29fd1302"

  url "https://github.com/g66ppdpctp-ui/CodeIsland/releases/download/v#{version}/CodeIsland.dmg"
  name "CodeIsland"
  desc "Menu bar companion for Claude Code, Codex, Gemini CLI and more (auto-built fork)"
  homepage "https://github.com/g66ppdpctp-ui/CodeIsland"

  app "CodeIsland.app"

  zap trash: [
    "~/.codeisland",
  ]
end
