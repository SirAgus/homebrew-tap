cask "pulse" do
  version "0.01.6"
  sha256 "eae9c8d6f56da3554492ccbce1b8476f2339a5d23a965358b346d506a5ba73bf"

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
