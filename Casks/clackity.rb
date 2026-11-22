cask "clackity" do
  version "1.3.6"
  sha256 "181471e4f7b3df783f9147e367e77d0617d0fd9b3e837747234aa6c83a9922f7"

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
