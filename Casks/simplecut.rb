cask "simplecut" do
  version "0.1.0"
  sha256 "41edcefbd8628f043321632a652bd1ba607946d418b908f20dcec00516832741"

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
