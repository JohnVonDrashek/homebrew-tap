cask "council-of-chalcedon" do
  version "1.0.18"
  sha256 "652825d61a7c825cf26490d2ad114add11d96beff7d23e7d6661f3dfd8c4233e"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.18/CouncilOfChalcedon-1.0.18-macOS.dmg"
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
