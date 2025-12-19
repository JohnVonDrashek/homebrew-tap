cask "praymodoro" do
  version "1.0.2"
  sha256 "a2f9eea961489f1fa2b4d5260d5a071c58156b4495625f0455b774d25d1c960d"

  url "https://github.com/JohnVonDrashek/praymodoro/releases/latest/download/Praymodoro_#{version}_aarch64.dmg"
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
    "~/Library/Preferences/com.praymodoro.timer.plist",
    "~/Library/Saved Application State/com.praymodoro.timer.savedState",
  ]
end
