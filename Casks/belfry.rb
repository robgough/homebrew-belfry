cask "belfry" do
  version "2026.10.3"
  sha256 "a1b61956eab034c5ab92ad7aa90b7a9817ba5ed03c753df9d2f0831af25f92ad"

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
