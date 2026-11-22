cask "clackity" do
  version "1.3.6"
  sha256 "66df552360b9a1565110ba23097363d029527208d257d56f32f44d9ec6baf7a8"

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
