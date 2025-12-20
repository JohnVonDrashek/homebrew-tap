cask "council-of-chalcedon" do
  version "1.0.40"
  sha256 "5b403706ac125c44fd40ad4c91a110d8fda9a990ea13c85151ddc06e48ff5a3d"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.40/CouncilOfChalcedon-1.0.40-macOS.dmg"
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
