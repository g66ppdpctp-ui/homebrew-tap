cask "filepop" do
  version "1.0.1-2"
  sha256 "9d0236e08f0392ececfbeabf12e158a88f6209e409204a25ae9045a61f61d389"

  url "https://github.com/LQF-dev/FilePop/releases/download/v#{version}/FilePop-#{version}-macOS.dmg"
  name "FilePop"
  desc "macOS Finder right-click enhancement — new file / copy path / open terminal"
  homepage "https://github.com/LQF-dev/FilePop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FilePop.app"
end
