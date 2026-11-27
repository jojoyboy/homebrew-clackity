cask "clackity" do
  version "1.0.4"
  sha256 "8b0e7283c15d86252e7c5ec0f5e107055070e985e7e0b32204d10148ccccf941"

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
