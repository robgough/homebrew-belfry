cask "belfry" do
  version "2026.10.4"
  sha256 "579ad43e3c35e0131571316f705b0280cd7930f702140dff9db7d35c77400815"

  url "https://github.com/robgough/belfry/releases/download/v#{version}/Belfry-#{version}.zip"
  name "Belfry"
  desc "Native front-end for tmux with live coding-agent status"
  homepage "https://belfry.robgough.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on formula: "tmux"

  app "Belfry.app"

  zap trash: [
    "~/Library/Application Support/Belfry",
    "~/Library/Application Support/Sessionator",
    "~/Library/Caches/net.robgough.belfry",
    "~/Library/HTTPStorages/net.robgough.belfry",
    "~/Library/Preferences/net.robgough.belfry.plist",
  ]
end
