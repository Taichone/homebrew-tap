cask "simplecut" do
  version "0.1.1"
  sha256 "c35afe3881844a31eaff9104874eb1446fd5b65b1165e4ddc287f5b3f8ee1137"

  url "https://github.com/Taichone/homebrew-tap/releases/download/simplecut-v#{version}/SimpleCut-#{version}.zip"
  name "SimpleCut"
  desc "Lightweight video editor for macOS"
  homepage "https://github.com/Taichone/homebrew-tap"

  depends_on macos: :tahoe

  app "SimpleCut.app"

  zap trash: [
    "~/Library/Containers/com.taichone.SimpleCut",
  ]

  caveats <<~EOS
    SimpleCut is not notarized. If macOS blocks the app on first launch,
    reinstall with:
      brew reinstall --cask --no-quarantine taichone/tap/simplecut
    or allow the app under System Settings > Privacy & Security.
  EOS
end
