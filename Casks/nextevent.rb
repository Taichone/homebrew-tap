cask "nextevent" do
  version "0.1.14"
  sha256 "a6d2fe5194f30f260db64fca8c9df09383efbf2535f4509d8bb3877274d4023e"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  uninstall quit: "dev.tamiki.nextevent.mac"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
