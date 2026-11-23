cask "clackity" do
  version "1.0.2"
  sha256 "ffaaae280e5c5b89109f6182e8a0afadbe93de46caad9c78ac682b01a7a76737"

  url "https://raw.githubusercontent.com/jojoyboy/homebrew-clackity/main/bin/Clackity-macOS.zip"
  name "Clackity"
  desc "Featherweight macOS mechanical keyboard sound effects and click ripple app"
  homepage "https://github.com/jojoyboy/Clackityclack"

  depends_on macos: :monterey

  app "Clackity.app"
  binary "#{appdir}/Clackity.app/Contents/MacOS/clack"

  uninstall quit: "com.jojoyboy.Clackity"

  zap trash: [
    "~/Library/Application Support/Clackity",
    "~/Library/Preferences/com.jojoyboy.Clackity.plist",
  ]
end
