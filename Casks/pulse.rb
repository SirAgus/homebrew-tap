cask "pulse" do
  version "0.01.3"
  sha256 "be2e06f60d0af77ac43424ff993314e0f1e97a4d4b2661e6304e69315590caab"

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
