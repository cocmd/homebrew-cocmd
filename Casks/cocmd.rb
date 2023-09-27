cask "cocmd" do
  version "1.0.7"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "6ba2bab90b639754d78f3a046407c1826a6a4353b7f22f979153280fa97391cc"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "0fd18a7d204f00d885a93ac719a6cd22e657321c583814e6bbc2b3680a2a65e1"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end