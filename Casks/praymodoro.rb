cask "praymodoro" do
  version "1.0.2"
  sha256 "db5cb977fe226698581d4964811279487b12a4916ae8f6e2f2d0e460f22329f0"

  url "https://github.com/JohnVonDrashek/praymodoro/releases/latest/download/Praymodoro-#{version}-arm64.dmg"
  name "Praymodoro"
  desc "Prayerful Pomodoro timer with Catholic saints as desktop companions"
  homepage "https://github.com/JohnVonDrashek/praymodoro"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Praymodoro.app"

  zap trash: [
    "~/Library/Application Support/Praymodoro",
    "~/Library/Preferences/com.electron.praymodoro.plist",
    "~/Library/Saved Application State/com.electron.praymodoro.savedState",
  ]
end
