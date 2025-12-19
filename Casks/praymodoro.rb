cask "praymodoro" do
  version "1.0.2"
  sha256 "1aa8c945a8b1ad43151a3ff7a0e1c7b1c7da98ce3a3d7ce215365b4fa4f63528"

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
