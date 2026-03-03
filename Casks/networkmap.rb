cask "networkmap" do
  version "0.0.1-alpha7"
  sha256 "e7a2434f340ec2475cb4f09843df61b39673a88452e705d77c5b3256654bde50"

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
