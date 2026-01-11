cask "council-of-chalcedon" do
  version "1.0.48"
  sha256 "0efc852571c0ad35d9c08fada0fd20c5607cadc2b7873ce76e1248d43b1f3342"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.48/CouncilOfChalcedon-1.0.48-macOS.dmg"
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
