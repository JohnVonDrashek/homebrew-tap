cask "praymodoro" do
  version "1.0.2"
  sha256 "dae7e2592227651073ee8f30b6ff5365447222a7e78102f671bcfade2a76a63b"

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
