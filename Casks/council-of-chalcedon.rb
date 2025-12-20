cask "council-of-chalcedon" do
  version "1.0.20"
  sha256 "3462f35482785795d03bb099cb8043cd0d4fd5d428fad3ad4f36f904704c0cba"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.20/CouncilOfChalcedon-1.0.20-macOS.dmg"
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
