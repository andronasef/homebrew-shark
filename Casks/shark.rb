cask "shark" do
  version "1.0.0-alpha.2"
  sha256 "9f044932cb8b2ae8763f668595784d5a2452c28f5690273ab9953bfc84110d8b"

  url "https://github.com/andronasef/shark/releases/download/v#{version}/Shark-#{version}.dmg"
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
