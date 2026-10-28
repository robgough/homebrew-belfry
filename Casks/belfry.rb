cask "belfry" do
  version "2026.10.8"
  sha256 "bb00f7399acafe821b5641dfdbc801b3fbfc235b652e03a7457e0ea8fb4e5977"

  url "https://github.com/robgough/belfry/releases/download/v#{version}/Belfry-#{version}.zip"
  name "Belfry"
  desc "Native front-end for tmux with live coding-agent status"
  homepage "https://belfry.robgough.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on formula: "tmux"
  depends_on macos: :sonoma

  app "Belfry.app"

  zap trash: [
    "~/Library/Application Support/Belfry",
    "~/Library/Application Support/Sessionator",
    "~/Library/Caches/net.robgough.belfry",
    "~/Library/HTTPStorages/net.robgough.belfry",
    "~/Library/Preferences/net.robgough.belfry.plist",
  ]
end
