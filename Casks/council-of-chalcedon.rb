cask "council-of-chalcedon" do
  version "1.0.22"
  sha256 "2d7a0a4ffa5d79ebf44402954e5d345c328126f9917fc6db953ff6bb62f1bdc8"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.22/CouncilOfChalcedon-1.0.22-macOS.dmg"
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
