cask "council-of-chalcedon" do
  version "1.0.26"
  sha256 "2361f8a2d1c5174c8037e6fabcd58bc8255831aef8faeb4ddf81f3e885f00d71"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.26/CouncilOfChalcedon-1.0.26-macOS.dmg"
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
