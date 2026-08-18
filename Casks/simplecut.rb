cask "simplecut" do
  version "0.1.6"
  sha256 "df17206cea8dcb730b035d578dd1ebcdfdc20bd1946bc69dd368b2362d54721e"

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
