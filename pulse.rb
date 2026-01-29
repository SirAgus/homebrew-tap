cask "pulse" do
  version "1.0.0"
  sha256 "c615f85d065f9e5f86bea5780eb8f565d6d0d26880cc11c72fddbc613db2a8c5"

  url "https://github.com/SirAgus/dynamicIsland/releases/download/v#{version}/PULSE.dmg"
  name "PULSE"
  desc "Dynamic Island for macOS"
  homepage "https://github.com/SirAgus/dynamicIsland"

  app "PULSE.app"

  zap trash: [
    "~/Library/Application Support/com.agus.pulse",
    "~/Library/Preferences/com.agus.pulse.plist",
  ]
end
