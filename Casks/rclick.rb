cask "rclick" do
  version "2.0.3"
  sha256 "aafd7dc1d374c69756dbf755b8d4ad7ed56110c6a34b0b50aad01cb06cf0870f"

  url "https://github.com/wflixu/RClick/releases/download/v#{version}/RClick-v#{version}.dmg"
  name "RClick"
  desc "macOS Finder right-click enhancement"
  homepage "https://github.com/wflixu/RClick"

  depends_on macos: ">= :sequoia"
  app "RClick.app"
end
