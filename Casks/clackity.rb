cask "clackity" do
  version "1.0.6"
  sha256 "7e6afa4663b7df02fe7c1852c179d77800e9ad220ea7db1ca530becaf73f8b44"

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
