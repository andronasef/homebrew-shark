cask "shark" do
  version "1.0.0-alpha.1"
  sha256 "65c86594ae9e07d66245e0ee93054418b009d5903ec77a8b162f1f43250f3a04"

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
