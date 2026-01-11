cask "council-of-chalcedon" do
  version "1.0.46"
  sha256 "54fd1ec2ae481023c4b86b363e7d7f241cc59a1f28ed266cdda14ceca65d7281"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.46/CouncilOfChalcedon-1.0.46-macOS.dmg"
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
