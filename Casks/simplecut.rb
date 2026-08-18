cask "simplecut" do
  version "0.1.5"
  sha256 "72a6939951aa47c21b213f3a03d94ec31e752dd4c506ab80475f56578ad452b2"

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
