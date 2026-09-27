cask "nextevent" do
  version "0.1.2"
  sha256 "ffffea7d9d237facc3311f65148e0e3c3be6a99ba84e9006b800c7ee5a67f19d"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
