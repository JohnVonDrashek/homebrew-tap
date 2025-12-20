cask "council-of-chalcedon" do
  version "1.0.16"
  sha256 "2259c62207fe4b6d6f00ed8e60e0600f6c385674a3be2cc1292b44985d36a94a"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.16/CouncilOfChalcedon-1.0.16-macOS.dmg"
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
