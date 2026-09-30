cask "nextevent" do
  version "0.1.9"
  sha256 "e077c2fe3b8b25a7ddf90eba6e2eaa877073675dd33a947757c2f8f3a3c2bd5c"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
