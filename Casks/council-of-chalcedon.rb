cask "council-of-chalcedon" do
  version "1.0.24"
  sha256 "d670ab3f870a75f4bc967a80bbf3cc9717623c0240d3f64124674642a24ace80"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.24/CouncilOfChalcedon-1.0.24-macOS.dmg"
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
