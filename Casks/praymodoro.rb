cask "praymodoro" do
  version "1.0.2"
  sha256 "7e791d74f0758f98b43b6687fb94dcc76a22330cdbe70c496e009b9efbfded01"

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
