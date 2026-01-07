cask "praymodoro" do
  version "1.0.2"
  sha256 "d518e67da236d5b420a5e374d73adf8cc79735ae7b36e1530e4c24a05df89b5b"

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
