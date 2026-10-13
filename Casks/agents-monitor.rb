# frozen_string_literal: true

cask "agents-monitor" do
  version "1.0.5"
  sha256 "08b274ec78f38564f66f1d8b62f51e0d066ab533d0bc95b1df194665df245066"

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
