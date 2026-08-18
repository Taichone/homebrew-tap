cask "simplecut" do
  version "0.1.4"
  sha256 "4649bd132148f90047d4fcf1d61faea8713e0deae2fad4e92ae79bbe0c04a4ba"

  url "https://github.com/Taichone/homebrew-tap/releases/download/simplecut-v#{version}/SimpleCut-#{version}.zip"
  name "SimpleCut"
  desc "Lightweight video editor for macOS"
  homepage "https://github.com/Taichone/homebrew-tap"

  depends_on macos: :tahoe

  app "SimpleCut.app"
  binary "#{appdir}/SimpleCut.app/Contents/Resources/simplecut"

  zap trash: [
    "~/Library/Containers/com.taichone.SimpleCut",
  ]
end
