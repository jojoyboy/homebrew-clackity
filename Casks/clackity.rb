cask "clackity" do
  version "1.0.3"
  sha256 "22a7ffc52fac2267bde2677c818a7d1db7eb486d4c345dfbddbe98cca8e9cf29"

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
