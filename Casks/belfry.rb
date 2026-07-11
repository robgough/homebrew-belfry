cask "belfry" do
  version "2026.07.12"
  sha256 "6d13c465ddf339234a636f1b0a1b3e3ab27698f5b954f8eec9480116773893d8"

  url "https://github.com/robgough/belfry/releases/download/v#{version}/Belfry-#{version}.zip",
      verified: "github.com/robgough/belfry/"
  name "Belfry"
  desc "Native front-end for tmux with Claude Code status badges"
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
