cask "clackity" do
  version "1.0.0"
  sha256 "a4c745efc321d1501c6cf551aeed7cf863406a6a3787ee3a471856e35cffc381"

  url "https://github.com/jojoyboy/Clackityclack/releases/download/v#{version}/Clackity-macOS.zip"
  name "Clackity"
  desc "Featherweight macOS mechanical keyboard sound effects and click ripple app"
  homepage "https://github.com/jojoyboy/Clackityclack"

  depends_on macos: :monterey

  app "Clackity.app"

  uninstall quit: "com.jojoyboy.Clackity"

  zap trash: [
    "~/Library/Application Support/Clackity",
    "~/Library/Preferences/com.jojoyboy.Clackity.plist",
  ]
end
