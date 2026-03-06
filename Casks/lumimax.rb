cask "lumimax" do
  version "1.4.0"
  sha256 "fe6b31a562c631329c14ed75da8252e0986049b7a8e863bf32f55f06fdd5ccb0"

  url "https://github.com/Joowonoil/LumiMax/releases/download/v#{version}/LumiMax.dmg",
      verified: "github.com/Joowonoil/LumiMax/"
  name "LumiMax"
  desc "XDR brightness boost for displays up to 1600 nits"
  homepage "https://ramterstudio.com/lumimax/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "LumiMax.app"

  uninstall quit: "com.ramster.LumiMax"

  zap trash: [
    "~/Library/Caches/com.ramster.LumiMax",
    "~/Library/Preferences/com.ramster.LumiMax.plist",
  ]
end
