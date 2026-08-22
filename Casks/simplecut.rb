cask "simplecut" do
  version "0.1.7"
  sha256 "5374ad3aa4f62696369b5cca6890d8fcd55b7998c8136312e8abc051243f0eb8"

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
