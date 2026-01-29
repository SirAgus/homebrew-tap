cask "pulse" do
  version "0.01.4"
  sha256 "69a313d6810cacdcf8137497e091e23a4358eb0f6a6977eb58f8ebb39b10f687"

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
