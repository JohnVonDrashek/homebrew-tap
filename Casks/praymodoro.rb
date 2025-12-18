cask "praymodoro" do
  version "1.0.2"
  sha256 "2d8d65692f0ceb559c9314dc71a199075eb8181ed9afd1ea2181d5a15c28d65c"

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
