cask "council-of-chalcedon" do
  version "1.0.1"
  sha256 "937b8c1ef5b2d994bc91a6d2c08899170081ecd2c6eb07cb2fb93ffa1e09f903"

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
