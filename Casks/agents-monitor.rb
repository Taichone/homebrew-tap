# frozen_string_literal: true

cask "agents-monitor" do
  version "1.0.8"
  sha256 "74d53e7a71adac26f7ab0445cc3130b55bb0e11f8e96180ca04f6e4a40cf37c9"

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
