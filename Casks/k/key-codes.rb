cask "key-codes" do
  version "2.2.1"
  sha256 "a25901003045ab9079af9d91d2596602009ebe79750519add766689b4e5c0d54"

  url "https://manytricks.com/download/_do_not_hotlink_/keycodes#{version.no_dots}.dmg"
  name "Key Codes"
  desc "Display key code, unicode value and modifier keys state for any key combination"
  homepage "https://manytricks.com/keycodes/"

  livecheck do
    url "https://manytricks.com/keycodes/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Key Codes.app"

  zap trash: [
    "~/Library/Caches/com.manytricks.KeyCodes",
    "~/Library/Preferences/com.manytricks.KeyCodes.plist",
  ]
end
