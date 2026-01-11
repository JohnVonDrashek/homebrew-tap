cask "council-of-chalcedon" do
  version "1.0.50"
  sha256 "2915887916b824542e5336de86452e387125035b975e7440a25326c7b52c1c29"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.50/CouncilOfChalcedon-1.0.50-macOS.dmg"
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
