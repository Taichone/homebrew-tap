cask "nextevent" do
  version "0.1"
  sha256 "0d1bff39ab599fc9c937937ad3c9578cc7b559d4240df94a55ac177910bc4fcf"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "NextEventMac.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
