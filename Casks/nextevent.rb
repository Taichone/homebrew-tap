cask "nextevent" do
  version "0.1.4"
  sha256 "8e3553ed7fb5045af2a9cb42d1ce2134de0b4d92ffd280afbb0d08e95a1d7cbd"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
