cask "council-of-chalcedon" do
  version "1.0.30"
  sha256 "824a13b50ae65f3e760ba0e0883ffb7bb36db066a631b1933cec8b4104ab8640"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.30/CouncilOfChalcedon-1.0.30-macOS.dmg"
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
