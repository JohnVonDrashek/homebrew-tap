cask "council-of-chalcedon" do
  version "1.0.1"
  sha256 "a22fe51cf85ad30ea7748d5c530a51d8ae1c8a6fb823999e98ffc8a0871f26a5"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.1/CouncilOfChalcedon-1.0.1-macOS.dmg"
  name "Council of Chalcedon"
  desc "Educational visual novel re-enacting the Fourth Ecumenical Council (451 AD)"
  homepage "https://github.com/JohnVonDrashek/council-of-chalcedon-vn"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Council of Chalcedon.app"

  zap trash: [
    "~/Library/Saved Application State/com.renpy.councilofchalcedon.savedState",
    "~/Library/RenPy/CouncilOfChalcedon",
  ]
end
