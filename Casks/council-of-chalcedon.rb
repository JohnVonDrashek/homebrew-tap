cask "council-of-chalcedon" do
  version "1.0.28"
  sha256 "8b68765fa0c9b9484c61f83c9b7cfc4f9b761056f66b877f70ba93a3cc9f7de5"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.28/CouncilOfChalcedon-1.0.28-macOS.dmg"
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
