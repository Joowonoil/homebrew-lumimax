cask "lumimax" do
  version "1.4.1"
  sha256 "113a5bc477179d9b3d8e35717148915a0fffd01bf352acc89e42fd5b15e4e07c"

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
