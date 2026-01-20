cask "praymodoro" do
  version "1.0.2"
  sha256 "7e553182b7eb94bd7268d0785bd8b4f97b02d3e8780b094311660af02326c2a4"

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
