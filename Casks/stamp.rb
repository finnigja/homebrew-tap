cask "stamp" do
  version "1.0.0"
  sha256 "d30ebd9dd0bb77673e23d7412d392eba2d510b3d010867bd10ac475fc4feafb1"

  url "https://github.com/finnigja/stamp/releases/download/v#{version}/Stamp-#{version}.app.zip"
  name "Stamp"
  desc "Floating timestamp overlay for screenshots"
  homepage "https://github.com/finnigja/stamp"

  depends_on macos: ">= :ventura"

  app "Stamp.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Stamp.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.stamp.app.plist",
  ]
end
