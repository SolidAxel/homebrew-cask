cask "cnkiexpress" do
  version "0.2.24"
  sha256 "6ce9d8ec494a0c69fd052a72289941030c1c5a14d786df8eacdf1dd2e0a33804"

  url "https://download.cnki.net/cnkiexpress/\%E5\%85\%A8\%E7\%90\%83\%E5\%AD\%A6\%E6\%9C\%AF\%E5\%BF\%AB\%E6\%8A\%A5-#{version}.dmg"
  name "CNKIExpress"
  name "全球学术快报"
  desc "Academic application"
  homepage "https://cajviewer.cnki.net/index.html"

  livecheck do
    url "https://cajviewer.cnki.net/download.html"
    regex(%r{href=.*/%E5%85%A8%E7%90%83%E5%AD%A6%E6%9C%AF%E5%BF%AB%E6%8A%A5[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "全球学术快报.app"

  uninstall quit: "com.cnki.cnkiexpress"

  zap trash: [
    "~/Library/Saved Application State/com.cnki.cnkiexpress.savedState/",
    "~/Library/Application Support/cnkiexpress",
    "~/Library/Preferences/com.cnki.cnkiexpress.plist",
  ]
end
