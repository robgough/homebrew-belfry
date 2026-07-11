cask "belfry" do
  version "2026.07.11"
  sha256 "884f511cc303d10550d6b2ddb00ee43ab03c573899a4ddc25014075cf1102e2b"

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
