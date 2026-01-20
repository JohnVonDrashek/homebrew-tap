cask "praymodoro" do
  version "1.0.2"
  sha256 "5ec111a91e682e1bf187a0af7abc802e58de5658ec70f83f48779cc731cef750"

  url "https://github.com/JohnVonDrashek/praymodoro/releases/latest/download/Praymodoro_#{version}_universal.dmg"
  name "Praymodoro"
  desc "Prayerful Pomodoro timer with Catholic saints as desktop companions"
  homepage "https://github.com/JohnVonDrashek/praymodoro"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Praymodoro.app"

  zap trash: [
    "~/Library/Application Support/praymodoro",
    "~/Library/Preferences/com.praymodoro.app.plist",
  ]
end
