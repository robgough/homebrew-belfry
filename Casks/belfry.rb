cask "belfry" do
  version "2026.07.18"
  sha256 "43914c195a4ebf1cfc5f57d6b5e5659b2408d4284b9683a7c47112b4e56dfe39"

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
