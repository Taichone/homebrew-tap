cask "nextevent" do
  version "0.1.13"
  sha256 "6ec9b99add4edd2f9d2bab65816c624a7144310fe4a56070bc4aad206f0eb6c5"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
