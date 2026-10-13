# frozen_string_literal: true

cask "agents-monitor" do
  version "1.0.3"
  sha256 "3ea6d2a6992e420256f159ef9030080d19950e07416473599870c80ee7fa40ce"

  url "https://github.com/Taichone/homebrew-tap/releases/download/agents-monitor-v#{version}/AgentsMonitor-#{version}.zip"
  name "Agents Monitor"
  desc "Monitor Codex and Claude sessions from the menu bar"
  homepage "https://github.com/Taichone/homebrew-tap#agents-monitor"

  livecheck do
    url :url
    regex(/^agents-monitor-v(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "AgentsMonitor.app"

  uninstall quit: "AgentsMonitor"

  zap trash: [
    "~/.config/agents-monitor",
    "~/Library/Preferences/AgentsMonitor.plist",
  ]
end
