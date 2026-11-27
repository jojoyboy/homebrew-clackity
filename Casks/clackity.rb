cask "clackity" do
  version "1.0.5"
  sha256 "64a9b2911c95f1672e0b54f4cb4ace6154e152f3327f993204fca48500c81adc"

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
