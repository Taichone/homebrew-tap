cask "nextevent" do
  version "0.1.5"
  sha256 "e01583fd31421368bae5027857ef80f1cb24befc9e458ceee9338e241a3fe8ed"

  url "https://github.com/Taichone/homebrew-tap/releases/download/nextevent-v#{version}/Nextevent-#{version}.zip"
  name "Nextevent"
  desc "Calendar events and meeting details in the menu bar"
  homepage "https://github.com/Taichone/next-event-app-ios"

  depends_on macos: :tahoe

  app "Nextevent.app"

  zap trash: "~/Library/Containers/dev.tamiki.nextevent.mac"
end
