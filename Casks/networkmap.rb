cask "networkmap" do
  version "0.0.1-alpha12"
  sha256 "502cc17d2b20a0de03ee6c40ecb1414f2ec20c89e5d7c1f3857ce9352f7d4a4d"

  url "https://github.com/carlosas/networkmap/releases/download/v#{version}/NetworkMap-#{version}.dmg"
  name "NetworkMap"
  desc "macOS menu bar app that displays network information in real-time"
  homepage "https://github.com/carlosas/networkmap"

  app "NetworkMap.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/NetworkMap.app"]
  end
end
