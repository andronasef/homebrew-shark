cask "shark" do
  version "1.0.0-alpha"
  sha256 :no_check

  url "https://github.com/andronasef/shark/releases/download/v#{version}/Shark-#{version}.zip"
  name "Shark"
  desc "Native Mac file manager for people who live in folders"
  homepage "https://github.com/andronasef/shark"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Shark.app"

  zap trash: [
    "~/Library/Application Support/Shark",
    "~/Library/Caches/com.increasinglabs.shark",
    "~/Library/Preferences/com.increasinglabs.shark.plist",
    "~/Library/Saved Application State/com.increasinglabs.shark.savedState",
  ]
end
