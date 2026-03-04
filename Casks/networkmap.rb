cask "networkmap" do
  version "0.0.1-alpha21"
  sha256 "b82b2f100243d82c4bd51420f05201f5bc453e9aac1e1d90564d515a4b327842"

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
