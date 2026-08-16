cask "simplecut" do
  version "0.1.2"
  sha256 "7c9d5350d9f4337bdb705764621cabc4b12273e4bdf6b3165c842e4ed637f25c"

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
