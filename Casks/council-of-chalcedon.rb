cask "council-of-chalcedon" do
  version "1.0.42"
  sha256 "8cab287a14c41733e8e824ea2de722724c1f21b252d9dfccacb1c67b4627ad78"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.42/CouncilOfChalcedon-1.0.42-macOS.dmg"
  name "Council of Chalcedon"
  desc "Educational visual novel re-enacting the Fourth Ecumenical Council (451 AD)"
  homepage "https://github.com/JohnVonDrashek/council-of-chalcedon-vn"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CouncilOfChalcedon.app"

  zap trash: [
    "~/Library/Saved Application State/com.renpy.councilofchalcedon.savedState",
    "~/Library/RenPy/CouncilOfChalcedon",
  ]
end
