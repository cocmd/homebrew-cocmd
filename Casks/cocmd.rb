cask "cocmd" do
  version "2.1.8"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "a17c03ff341beaf5a286aaab033dc443d703ed41f9dbfae653289dab00120bec"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "e84b5a96def1d793997fc8ee4e380f11b1d0515cf120402cd7aec6e07bafb74e"
  end

  name "Cocmd"
  desc "crossplatform sharing of cmd/termina/shell knowledge"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end