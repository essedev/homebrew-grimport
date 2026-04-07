cask "portsage" do
  version "0.6.0"
  sha256 "8a3958a9610c729e235e76ff300b5f02bcddde5664fc9df41cbbebd48f54a230"

  url "https://github.com/essedev/portsage/releases/download/v#{version}/Portsage_#{version}_aarch64.dmg"
  name "Portsage"
  desc "Port allocation manager for macOS - your port sage"
  homepage "https://github.com/essedev/portsage"

  app "Portsage.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Portsage.app"]
  end
end
