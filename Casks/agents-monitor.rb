# frozen_string_literal: true

cask "agents-monitor" do
  version "1.0.9"
  sha256 "9bd51f00dbb5dd5735258914cae28db59f24ba1980a3ab17e83a0d11539fcb76"

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
