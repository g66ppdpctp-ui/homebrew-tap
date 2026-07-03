cask "bilisum" do
  version "1.19.2"
  sha256 "923c5e818c72aa9a0389a75ad8bb8b2aec9a6fc371ee8a9ad20f5f531874f0fc"

  url "https://github.com/lycohana/BiliSum/releases/download/v#{version}/BiliSum-#{version}-mac-arm64.dmg"
  name "BiliSum"
  desc "AI video summarizer and knowledge base tool for Bilibili, YouTube and local videos"
  homepage "https://github.com/lycohana/BiliSum"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "BiliSum.app"

  zap trash: [
    "~/Library/Application Support/BiliSum",
    "~/Library/Preferences/com.bilisum.app.plist",
    "~/Library/Saved Application State/com.bilisum.app.savedState",
  ]
end
