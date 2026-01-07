cask "praymodoro" do
  version "1.0.2"
  sha256 "829fe0087350df2d32c8288996147ea6becb224eaa36362e8fe6d64d917d37e6"

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
