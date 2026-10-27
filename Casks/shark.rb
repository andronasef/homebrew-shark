cask "shark" do
  version "1.0.0-alpha.3"
  sha256 "0958cbcc7b649d14b4bf77c2c61ca6ed539f86ea5d46be0a70f35c5e3fbbb626"

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
