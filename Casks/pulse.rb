cask "pulse" do
  version "0.02.0"
  sha256 "4f1ccd37f140e7f5aa31a885f96b7f868c6dbaf9ef3d1c10df7385cfa9d6ac4e"

  url "https://github.com/SirAgus/Pulse/releases/download/v#{version}/PULSE.dmg"
  name "PULSE"
  desc "Dynamic Island for macOS"
  homepage "https://github.com/SirAgus/Pulse"

  app "PULSE.app"

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/PULSE.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.agus.pulse",
    "~/Library/Preferences/com.agus.pulse.plist",
  ]
end
