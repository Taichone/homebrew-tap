cask "nextevent" do
  version "0.1.6"
  sha256 "fb4bc6f38699f28f6a3ac66910b4210020f8fd8a1c3f4809913fbab49261f9c9"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
