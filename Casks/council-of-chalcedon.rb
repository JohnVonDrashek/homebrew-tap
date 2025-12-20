cask "council-of-chalcedon" do
  version "1.0.32"
  sha256 "f7a05bd9d64ea57aa452505b84402d2def8fe53d126df87ec764ab8f44681f87"

  url "https://github.com/JohnVonDrashek/council-of-chalcedon-vn/releases/download/v1.0.32/CouncilOfChalcedon-1.0.32-macOS.dmg"
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
