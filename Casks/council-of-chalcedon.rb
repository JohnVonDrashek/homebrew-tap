cask "council-of-chalcedon" do
  version "1.0.44"
  sha256 "8885b451b6fcbe6c106a2ba32a28bd134a597405a7af2d4424ea63fa6a400be5"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.44/CouncilOfChalcedon-1.0.44-macOS.dmg"
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
