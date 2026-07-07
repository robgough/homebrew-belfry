cask "belfry" do
  version "2026.07.5"
  sha256 "86924c3abb3f9a31604181eb93c3175b04b36722b151aec5ef6fe7f35fee4c80"

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
