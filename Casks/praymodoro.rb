cask "praymodoro" do
  version "1.0.2"
  sha256 "883028769b780e9c6a2f6112465fb32293c2ee0015ecc949a2c76aa2f14dabfc"

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
