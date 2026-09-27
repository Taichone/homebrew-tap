cask "nextevent" do
  version "0.1.1"
  sha256 "4fc8c39d4f20185be13cc36e34ea2b494feb0beadb3a644aff43802d06558ec5"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
