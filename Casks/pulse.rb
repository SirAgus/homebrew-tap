cask "pulse" do
  version "0.01.5"
  sha256 "4dbe810d71a5ea2e95685223e4a608a77a3253a4eceed28f1cd0a7d892fd8593"

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
