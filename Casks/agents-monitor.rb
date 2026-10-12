# frozen_string_literal: true

cask "agents-monitor" do
  version "1.0.1"
  sha256 "b16d4a2ce96fa236a3234c685db9758ae65e4acd53a6a0272e3d32df3f9f6e5b"

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
