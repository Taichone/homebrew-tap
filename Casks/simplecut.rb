cask "simplecut" do
  version "0.1.3"
  sha256 "37a223a3d475098e7f768bb06429738b71f11066d0fa53831c64e0b827a0a964"

  url "https://github.com/Taichone/homebrew-tap/releases/download/simplecut-v#{version}/SimpleCut-#{version}.zip"
  name "SimpleCut"
  desc "Lightweight video editor for macOS"
  homepage "https://github.com/Taichone/homebrew-tap"

  depends_on macos: :tahoe

  app "SimpleCut.app"

  zap trash: [
    "~/Library/Containers/com.taichone.SimpleCut",
  ]
end
